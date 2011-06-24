
-- *** STRUCTURE: `tbl_fields_author` ***
DROP TABLE IF EXISTS `tbl_fields_author`;
CREATE TABLE `tbl_fields_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_author_change` enum('yes','no') NOT NULL,
  `allow_multiple_selection` enum('yes','no') NOT NULL DEFAULT 'no',
  `default_to_current_user` enum('yes','no') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_author` ***

-- *** STRUCTURE: `tbl_fields_checkbox` ***
DROP TABLE IF EXISTS `tbl_fields_checkbox`;
CREATE TABLE `tbl_fields_checkbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') NOT NULL DEFAULT 'on',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_checkbox` ***
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (9, 34, 'off', NULL);
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (20, 65, 'off', NULL);

-- *** STRUCTURE: `tbl_fields_date` ***
DROP TABLE IF EXISTS `tbl_fields_date`;
CREATE TABLE `tbl_fields_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_date` ***
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (38, 28, 'yes');

-- *** STRUCTURE: `tbl_fields_datetime` ***
DROP TABLE IF EXISTS `tbl_fields_datetime`;
CREATE TABLE `tbl_fields_datetime` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `prepopulate` tinyint(1) DEFAULT '1',
  `time` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_datetime` ***

-- *** STRUCTURE: `tbl_fields_input` ***
DROP TABLE IF EXISTS `tbl_fields_input`;
CREATE TABLE `tbl_fields_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=161 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_input` ***
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (134, 17, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (71, 26, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (73, 29, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (59, 38, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (65, 41, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (84, 46, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (85, 47, '/^[^\\s:\\/?#]+:(?:\\/{2,3})?[^\\s.\\/?#]+(?:\\.[^\\s.\\/?#]+)*(?:\\/[^\\s?#]*\\??[^\\s?#]*(#[^\\s#]*)?)?$/');
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (153, 50, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (156, 52, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (157, 53, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (158, 54, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (159, 55, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (160, 56, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (136, 57, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (118, 59, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (119, 62, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (131, 69, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (135, 73, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (154, 74, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (155, 75, NULL);

-- *** STRUCTURE: `tbl_fields_member` ***
DROP TABLE IF EXISTS `tbl_fields_member`;
CREATE TABLE `tbl_fields_member` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_member` ***

-- *** STRUCTURE: `tbl_fields_memberlink` ***
DROP TABLE IF EXISTS `tbl_fields_memberlink`;
CREATE TABLE `tbl_fields_memberlink` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_memberlink` ***

-- *** STRUCTURE: `tbl_fields_memberrole` ***
DROP TABLE IF EXISTS `tbl_fields_memberrole`;
CREATE TABLE `tbl_fields_memberrole` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_memberrole` ***

-- *** STRUCTURE: `tbl_fields_order_entries` ***
DROP TABLE IF EXISTS `tbl_fields_order_entries`;
CREATE TABLE `tbl_fields_order_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `force_sort` enum('yes','no') DEFAULT 'no',
  `hide` enum('yes','no') DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_order_entries` ***
INSERT INTO `tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (4, 49, 'yes', 'yes');

-- *** STRUCTURE: `tbl_fields_reflection` ***
DROP TABLE IF EXISTS `tbl_fields_reflection`;
CREATE TABLE `tbl_fields_reflection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `expression` varchar(255) DEFAULT NULL,
  `formatter` varchar(255) DEFAULT NULL,
  `override` enum('yes','no') DEFAULT 'no',
  `hide` enum('yes','no') DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_reflection` ***

-- *** STRUCTURE: `tbl_fields_select` ***
DROP TABLE IF EXISTS `tbl_fields_select`;
CREATE TABLE `tbl_fields_select` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') NOT NULL DEFAULT 'no',
  `static_options` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `dynamic_options` int(11) unsigned DEFAULT NULL,
  `show_association` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `sort_options` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_select` ***
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`, `show_association`, `sort_options`) VALUES (53, 60, 'yes', NULL, 14, 'yes', 'no');
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`, `show_association`, `sort_options`) VALUES (30, 37, 'yes', NULL, 17, 'yes', 'no');
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`, `show_association`, `sort_options`) VALUES (40, 31, 'yes', NULL, 29, 'yes', 'no');
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`, `show_association`, `sort_options`) VALUES (41, 35, 'yes', NULL, 17, 'yes', 'no');
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`, `show_association`, `sort_options`) VALUES (32, 39, 'yes', NULL, 17, 'yes', 'no');
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`, `show_association`, `sort_options`) VALUES (37, 44, 'yes', NULL, 17, 'yes', 'no');
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`, `show_association`, `sort_options`) VALUES (79, 45, 'yes', NULL, 17, 'yes', 'no');
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`, `show_association`, `sort_options`) VALUES (44, 48, 'yes', NULL, 17, 'yes', 'no');
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`, `show_association`, `sort_options`) VALUES (54, 61, 'yes', NULL, 50, 'yes', 'no');
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`, `show_association`, `sort_options`) VALUES (81, 63, 'yes', NULL, 50, 'yes', 'no');
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`, `show_association`, `sort_options`) VALUES (82, 64, 'yes', NULL, 14, 'yes', 'no');
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`, `show_association`, `sort_options`) VALUES (80, 67, 'yes', 'Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday', NULL, 'yes', 'no');
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`, `show_association`, `sort_options`) VALUES (83, 68, 'yes', NULL, 17, 'yes', 'no');
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`, `show_association`, `sort_options`) VALUES (75, 70, 'yes', NULL, 17, 'yes', 'no');
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`, `show_association`, `sort_options`) VALUES (77, 72, 'yes', NULL, 17, 'yes', 'no');
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`, `show_association`, `sort_options`) VALUES (84, 76, 'yes', NULL, 17, 'yes', 'no');
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`, `show_association`, `sort_options`) VALUES (85, 77, 'yes', NULL, 17, 'yes', 'no');

-- *** STRUCTURE: `tbl_fields_selectbox_link` ***
DROP TABLE IF EXISTS `tbl_fields_selectbox_link`;
CREATE TABLE `tbl_fields_selectbox_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') NOT NULL DEFAULT 'no',
  `show_association` enum('yes','no') NOT NULL DEFAULT 'yes',
  `related_field_id` varchar(255) NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_selectbox_link` ***

-- *** STRUCTURE: `tbl_fields_stage` ***
DROP TABLE IF EXISTS `tbl_fields_stage`;
CREATE TABLE `tbl_fields_stage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `constructable` smallint(1) DEFAULT '0',
  `destructable` smallint(1) DEFAULT '0',
  `draggable` smallint(1) DEFAULT '0',
  `droppable` smallint(1) DEFAULT '0',
  `searchable` smallint(1) DEFAULT '0',
  `context` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_stage` ***

-- *** STRUCTURE: `tbl_fields_stage_sorting` ***
DROP TABLE IF EXISTS `tbl_fields_stage_sorting`;
CREATE TABLE `tbl_fields_stage_sorting` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `order` text,
  `context` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_stage_sorting` ***

-- *** STRUCTURE: `tbl_fields_subsectionmanager` ***
DROP TABLE IF EXISTS `tbl_fields_subsectionmanager`;
CREATE TABLE `tbl_fields_subsectionmanager` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `subsection_id` varchar(255) NOT NULL,
  `filter_tags` text,
  `caption` text,
  `droptext` text,
  `included_fields` text,
  `allow_multiple` tinyint(1) DEFAULT '0',
  `show_preview` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_subsectionmanager` ***

-- *** STRUCTURE: `tbl_fields_systemid` ***
DROP TABLE IF EXISTS `tbl_fields_systemid`;
CREATE TABLE `tbl_fields_systemid` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_systemid` ***

-- *** STRUCTURE: `tbl_fields_taglist` ***
DROP TABLE IF EXISTS `tbl_fields_taglist`;
CREATE TABLE `tbl_fields_taglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pre_populate_source` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_taglist` ***

-- *** STRUCTURE: `tbl_fields_textarea` ***
DROP TABLE IF EXISTS `tbl_fields_textarea`;
CREATE TABLE `tbl_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) DEFAULT NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_textarea` ***
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (5, 36, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (10, 43, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (28, 51, NULL, 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (25, 58, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (24, 71, 'markdown_extra_with_smartypants', 15);

-- *** STRUCTURE: `tbl_fields_uniqueinput` ***
DROP TABLE IF EXISTS `tbl_fields_uniqueinput`;
CREATE TABLE `tbl_fields_uniqueinput` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(100) DEFAULT NULL,
  `auto_unique` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_uniqueinput` ***

-- *** STRUCTURE: `tbl_fields_uniqueupload` ***
DROP TABLE IF EXISTS `tbl_fields_uniqueupload`;
CREATE TABLE `tbl_fields_uniqueupload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) NOT NULL,
  `validator` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_uniqueupload` ***
INSERT INTO `tbl_fields_uniqueupload` (`id`, `field_id`, `destination`, `validator`) VALUES (25, 23, '/workspace/uploads/photos', '/\\.(?:bmp|gif|jpe?g|png)$/i');
INSERT INTO `tbl_fields_uniqueupload` (`id`, `field_id`, `destination`, `validator`) VALUES (24, 42, '/workspace/uploads/files', '/\\.(?:doc|pdf|rtf|txt)$/i');

-- *** STRUCTURE: `tbl_fields_upload` ***
DROP TABLE IF EXISTS `tbl_fields_upload`;
CREATE TABLE `tbl_fields_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) NOT NULL,
  `validator` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_upload` ***

-- *** STRUCTURE: `tbl_entries_data_11` ***
DROP TABLE IF EXISTS `tbl_entries_data_11`;
CREATE TABLE `tbl_entries_data_11` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_11` ***
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (1, 69, '2011-02-22T13:48:00-08:00', 1298411280, 1298411280);

-- *** STRUCTURE: `tbl_entries_data_12` ***
DROP TABLE IF EXISTS `tbl_entries_data_12`;
CREATE TABLE `tbl_entries_data_12` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_12` ***
INSERT INTO `tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 69, 'judith', 'Judith');

-- *** STRUCTURE: `tbl_entries_data_13` ***
DROP TABLE IF EXISTS `tbl_entries_data_13`;
CREATE TABLE `tbl_entries_data_13` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_13` ***
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 69, 'slaughter', 'Slaughter');

-- *** STRUCTURE: `tbl_entries_data_14` ***
DROP TABLE IF EXISTS `tbl_entries_data_14`;
CREATE TABLE `tbl_entries_data_14` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_14` ***
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `handle`, `value`, `value_formatted`) VALUES (1, 69, 'judith-slaughter', 'Judith Slaughter', 'Judith Slaughter');

-- *** STRUCTURE: `tbl_entries_data_17` ***
DROP TABLE IF EXISTS `tbl_entries_data_17`;
CREATE TABLE `tbl_entries_data_17` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_17` ***
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (110, 19, 'israel', 'Israel');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (113, 22, 'home', 'Home');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (72, 90, 'bulletin-board', 'Bulletin board');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (129, 28, 'college-career', 'College/Career');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (111, 91, 'community', 'Community');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (121, 102, 'contact', 'Contact');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (76, 33, 'missions', 'Missions');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (63, 44, 'ministries', 'Ministries');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (99, 46, 'vanuatu', 'Vanuatu');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (88, 47, 'uganda', 'Uganda');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (89, 48, 'sweden', 'Sweden');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (87, 49, 'peru', 'Peru');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (86, 50, 'burkina-faso', 'Burkina Faso');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 51, 'brazil', 'Brazil');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (93, 54, 'natanara', 'Natanara');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (101, 56, 'fanafo', 'Fanafo');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (109, 64, 'meetings', 'Meetings');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (34, 72, 'bible-studies', 'Bible studies');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (47, 73, 'worship', 'Worship');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (130, 31, 'children-0-k', 'Children (0-K)');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (132, 30, 'jr-high', 'Jr. High');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (79, 29, 'high-school', 'High School');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (128, 98, 'online-giving', 'Online giving');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (73, 27, 'womens', 'Women\'s');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (69, 32, 'men-s', 'Men’s');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (127, 123, 'unknown', 'Unknown');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (82, 77, 'mexico', 'Mexico');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (57, 82, 'saturday-night', 'Saturday night');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (58, 83, 'sunday-morning', 'Sunday morning');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (80, 84, 'celebration', 'Celebration');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (81, 85, 'wednesday-night', 'Wednesday night');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (114, 114, 'about', 'About');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (106, 115, 'events', 'Events');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (108, 116, 'teachings', 'Teachings');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (125, 117, 'the-gospel', 'The Gospel');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (124, 118, 'our-mission', 'Our mission');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (123, 119, 'our-beliefs', 'Our beliefs');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (134, 120, 'servanthood', 'Servanthood');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (119, 121, 'history', 'History');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (120, 122, 'staff', 'Staff');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `handle`, `value`) VALUES (131, 124, 'grade-school', 'Grade School');

-- *** STRUCTURE: `tbl_entries_data_19` ***
DROP TABLE IF EXISTS `tbl_entries_data_19`;
CREATE TABLE `tbl_entries_data_19` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_19` ***
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (1, 69, 'no');

-- *** STRUCTURE: `tbl_entries_data_23` ***
DROP TABLE IF EXISTS `tbl_entries_data_23`;
CREATE TABLE `tbl_entries_data_23` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `size` int(11) unsigned NOT NULL,
  `mimetype` varchar(50) DEFAULT NULL,
  `meta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_23` ***
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (4, 9, '/uploads/photos/tumblr_lbme9ylN1M1qe7qcwo1_500-1298142093.jpg', 293871, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2011-02-19T11:01:33-08:00\";s:5:\"width\";i:467;s:6:\"height\";i:700;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (5, 10, '/uploads/photos/tumblr_lbmegmfmbt1qe7qcwo1_500-1298142868.jpg', 148810, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-02-19T11:14:27-08:00\";s:5:\"width\";i:500;s:6:\"height\";i:374;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (6, 11, '/uploads/photos/tumblr_lbmhakBqmV1qe7qcwo1_500-1298143120.jpg', 217914, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-02-19T11:18:40-08:00\";s:5:\"width\";i:500;s:6:\"height\";i:374;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (7, 12, '/uploads/photos/tumblr_lboq6pi6pd1qe7qcwo1_500-1298143135.jpg', 277473, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-02-19T11:18:55-08:00\";s:5:\"width\";i:500;s:6:\"height\";i:669;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (8, 13, '/uploads/photos/tumblr_lbr8qkFhzU1qe7qcwo1_500-1298143159.jpg', 390782, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-02-19T11:19:19-08:00\";s:5:\"width\";i:500;s:6:\"height\";i:669;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (9, 14, '/uploads/photos/tumblr_lbs1y4VG4N1qe7qcwo1_500-1298143174.jpg', 239741, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-02-19T11:19:34-08:00\";s:5:\"width\";i:500;s:6:\"height\";i:669;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (10, 15, '/uploads/photos/tumblr_lbs4ganIet1qe7qcwo1_1280-1298143188.jpg', 359886, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-02-19T11:19:48-08:00\";s:5:\"width\";i:800;s:6:\"height\";i:598;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (11, 16, '/uploads/photos/tumblr_lbu4aeZ0Y01qe7qcwo1_1280-1298143199.jpg', 327507, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-02-19T11:19:59-08:00\";s:5:\"width\";i:800;s:6:\"height\";i:598;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (12, 17, '/uploads/photos/tumblr_lbudz9x18Z1qe7qcwo1_1280-1298143208.jpg', 336059, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2011-02-19T11:20:08-08:00\";s:5:\"width\";i:598;s:6:\"height\";i:800;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (16, 18, '/uploads/photos/tumblr_lbvl8vXdUE1qe7qcwo1_1280-1298143223.jpg', 248161, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2011-02-19T11:20:23-08:00\";s:5:\"width\";i:800;s:6:\"height\";i:598;}');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (15, 20, '/uploads/photos/tumblr_lbygm9tYt11qe7qcwo1_1280-1298150222.jpg', 428289, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2011-02-19T13:17:02-08:00\";s:5:\"width\";i:800;s:6:\"height\";i:598;}');

-- *** STRUCTURE: `tbl_entries_data_26` ***
DROP TABLE IF EXISTS `tbl_entries_data_26`;
CREATE TABLE `tbl_entries_data_26` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_26` ***
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 9, 'mcdonalds', 'Mcdonalds');

-- *** STRUCTURE: `tbl_entries_data_28` ***
DROP TABLE IF EXISTS `tbl_entries_data_28`;
CREATE TABLE `tbl_entries_data_28` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_28` ***
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (4, 4, '2011-02-19T10:48:00-08:00', 1298141280, 1298141280);

-- *** STRUCTURE: `tbl_entries_data_29` ***
DROP TABLE IF EXISTS `tbl_entries_data_29`;
CREATE TABLE `tbl_entries_data_29` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_29` ***
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 4, 'israel-trip-2010', 'Israel trip 2010');

-- *** STRUCTURE: `tbl_entries_data_31` ***
DROP TABLE IF EXISTS `tbl_entries_data_31`;
CREATE TABLE `tbl_entries_data_31` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_31` ***
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 9, 'israel-trip-2010', 'Israel trip 2010');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 10, 'israel-trip-2010', 'Israel trip 2010');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 11, 'israel-trip-2010', 'Israel trip 2010');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 12, 'israel-trip-2010', 'Israel trip 2010');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 13, 'israel-trip-2010', 'Israel trip 2010');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 14, 'israel-trip-2010', 'Israel trip 2010');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 15, 'israel-trip-2010', 'Israel trip 2010');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 16, 'israel-trip-2010', 'Israel trip 2010');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 17, 'israel-trip-2010', 'Israel trip 2010');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 18, 'israel-trip-2010', 'Israel trip 2010');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 20, 'israel-trip-2010', 'Israel trip 2010');

-- *** STRUCTURE: `tbl_entries_data_34` ***
DROP TABLE IF EXISTS `tbl_entries_data_34`;
CREATE TABLE `tbl_entries_data_34` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_34` ***
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (3, 4, 'yes');

-- *** STRUCTURE: `tbl_entries_data_35` ***
DROP TABLE IF EXISTS `tbl_entries_data_35`;
CREATE TABLE `tbl_entries_data_35` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_35` ***
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 4, 'home', 'Home');
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 4, 'israel', 'Israel');

-- *** STRUCTURE: `tbl_entries_data_36` ***
DROP TABLE IF EXISTS `tbl_entries_data_36`;
CREATE TABLE `tbl_entries_data_36` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_36` ***
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 21, 'Proverbs 29:18 tells us, \"Without vision, the people perish.\" Biblically, vision typically means ‘God-given revelation’ and the Hebrew word for perish, used here in Proverbs, is a picture of someone running around like a madman. Without a vision for our fellowship, we would be like the madman, running aimlessly. The Lord has given our leadership a clear direction for us as a church, a mode in which we are to function.\r\n\r\n- A Ministry of Simplicity\r\n- A Ministry of Humility\r\n- A Ministry of Sincerity', '<p>Proverbs 29:18 tells us, &#8220;Without vision, the people perish.&#8221; Biblically, vision typically means ‘God-given revelation’ and the Hebrew word for perish, used here in Proverbs, is a picture of someone running around like a madman. Without a vision for our fellowship, we would be like the madman, running aimlessly. The Lord has given our leadership a clear direction for us as a church, a mode in which we are to function.</p>\n\n<ul>\n<li>A Ministry of Simplicity</li>\n<li>A Ministry of Humility</li>\n<li>A Ministry of Sincerity</li>\n</ul>\n');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (45, 34, 'The Bulletin Board is a way for people to post information about Bible studies they are holding, classes they are leading and gatherings of all kinds that are taking place among the body of ACCF.  Our hope is that this encourages ventures of faith as people step out to do what the Lord has laid on their hearts in the way of Bible studies, service projects and times of fellowship.  To help facilitate this, this Bulletin Board is available to help you get the word out.', '<p>The Bulletin Board is a way for people to post information about Bible studies they are holding, classes they are leading and gatherings of all kinds that are taking place among the body of ACCF.  Our hope is that this encourages ventures of faith as people step out to do what the Lord has laid on their hearts in the way of Bible studies, service projects and times of fellowship.  To help facilitate this, this Bulletin Board is available to help you get the word out.</p>\n');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (36, 35, '### Offering a refreshing look at what it means to be a godly woman\r\n\r\nOur approach to Women’s Ministry at Athey Creek is rather simple.  In Titus 2:3-5, the Lord gives us a loving outline for godly living that is specifically directed to women.  We are blessed to have some wonderful ‘older’ women in our fellowship who are willing to come alongside the younger women.  Much of this happens naturally as the women interact at church or various gatherings.  Relationships are formed and women grow as they learn from one another.  There are also opportunities for prayer, fellowship and getting into the Word at Bible studies and various events that take place throughout the year.  If you would like to know more about current Bible studies or upcoming events, please check the links listed below.\r\n\r\nJudy Slaughter oversees our Women’s Ministry and she is available to meet with the women of our church who desire prayer, godly counsel or simply a time to fellowship.  Judy also leads many of the studies that we offer, and she enjoys seeing the Lord at work in the hearts and minds of the ladies at our church.  If you would like to meet with Judy, or if you have any questions about this ministry, please contact the church office at 971-327-2120. ', '<h3>Offering a refreshing look at what it means to be a godly woman</h3>\n\n<p>Our approach to Women’s Ministry at Athey Creek is rather simple.  In Titus 2:3-5, the Lord gives us a loving outline for godly living that is specifically directed to women.  We are blessed to have some wonderful ‘older’ women in our fellowship who are willing to come alongside the younger women.  Much of this happens naturally as the women interact at church or various gatherings.  Relationships are formed and women grow as they learn from one another.  There are also opportunities for prayer, fellowship and getting into the Word at Bible studies and various events that take place throughout the year.  If you would like to know more about current Bible studies or upcoming events, please check the links listed below.</p>\n\n<p>Judy Slaughter oversees our Women’s Ministry and she is available to meet with the women of our church who desire prayer, godly counsel or simply a time to fellowship.  Judy also leads many of the studies that we offer, and she enjoys seeing the Lord at work in the hearts and minds of the ladies at our church.  If you would like to meet with Judy, or if you have any questions about this ministry, please contact the church office at 971-327-2120.</p>\n');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (15, 53, 'Tad and Marna Slaughter\r\n\r\nJoel (Wheaton), Amy (Wheaton) and John\r\n\r\nThe Islands of Vanuatu are located in the South Pacific west of Fiji.  In the late 1800’s the first missionaries came to these fierce cannibalistic islands.  In an amazingly brief space of time many became Christians with entire populations of some islands coming to Christ.  In spite of this, there is little teaching through the Bible today.  Consequently, there is a huge hunger for the Word and many opportunities for sharing with people.  Our work is to help people know Jesus and love Him more as a result of learning who He is through the study of His Word. \r\nPrayer Requests:\r\n\r\nThe Lord has been adding to and blessing the church here, for which we are thankful.  We are also thankful for the Lord’s constant provision of everything we need - wisdom, direction and daily necessities.  Please pray that the Lord would provide safe transportation for the new people who have begun to attend the fellowship (our truck is simply not enough), and that the people coming to church would truly comprehend God’s grace and mercy in their lives.  Pray for discernment that we would know which of the open doors the Lord has for US since there are so many possibilities! ', '<p>Tad and Marna Slaughter</p>\n\n<p>Joel (Wheaton), Amy (Wheaton) and John</p>\n\n<p>The Islands of Vanuatu are located in the South Pacific west of Fiji.  In the late 1800’s the first missionaries came to these fierce cannibalistic islands.  In an amazingly brief space of time many became Christians with entire populations of some islands coming to Christ.  In spite of this, there is little teaching through the Bible today.  Consequently, there is a huge hunger for the Word and many opportunities for sharing with people.  Our work is to help people know Jesus and love Him more as a result of learning who He is through the study of His Word. \nPrayer Requests:</p>\n\n<p>The Lord has been adding to and blessing the church here, for which we are thankful.  We are also thankful for the Lord’s constant provision of everything we need - wisdom, direction and daily necessities.  Please pray that the Lord would provide safe transportation for the new people who have begun to attend the fellowship (our truck is simply not enough), and that the people coming to church would truly comprehend God’s grace and mercy in their lives.  Pray for discernment that we would know which of the open doors the Lord has for US since there are so many possibilities!</p>\n');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (16, 55, 'The area known as Natanara is located about 20 minutes from Luganville down an “American road” built in World War Two by the Allies. Over 100,000 Americans at a time were in Luganville during the war to prevent the Japanese from completely capturing the Pacific. This was a staging area for the battles in the Solomon Islands. The remnants of World War Two are still put to good use. Virtually every road on Santo was built during the war and many buildings in town also date from this period. Natanara is a coastal area that is covered by coconut plantations and scattered settlements. The people of Natanara Christian Fellowship come from a large area with many walking over an hour and a half each way to church and back. Most of these people hail from other islands and speak different languages. It is not uncommon for the people in the fellowship to be conversant in five or more languages. Usually English is their third or fourth best language. The language most commonly used in Vanuatu is Bislama, which is a form of Pidgin English. This is the language that Pastor Floyd Bani and his assistants Steve Moli and Bradley Ngwera use in teaching the Bible.\r\n\r\nAt Natanara fellowship, church is an all day event. Before the church family arrives, Pastor Floyd, Steve and Bradley must put in several hours in preparation. Beginning at 5:30 a.m. they rake the leaves that continually fall. With no running water, they make many trips carrying five gallon buckets to the various locations where fresh water will needed throughout the day. Then the process of making lunch begins with the boiling of three huge pots of rice. Rice is the staple that goes with every meal in Vanuatu. As early as eight o’clock people begin trickling in for the service that starts at ten. Some come to help, others come to rest and enjoy relaxing on the peaceful grounds. Lunch follows the service and is a time for fellowship and laughter. The children will often start a game of soccer, basketball, or just play together. Many of the older youth and adults play volleyball. Others escape the heat and humidity with a nap on the shaded grass while being cooled by the soft ocean breeze. Around half past four in the afternoon following a short time of worship, the church family begins dispersing and making their way back home. The only things to be seen at the close of the day are the coals of a burning fire in the darkness with the three men gathered around worshipping the Lord.\r\n\r\nFloyd Bani has been the pastor of Natanara Christian Fellowship for the last year and a half. He had spent the previous year as the children’s pastor in Fanafo before returning to Natanara. Floyd is a gifted Bible teacher who keeps the emphasis on Jesus Christ in a way that is refreshing. Steve Moli and Bradley Ngwera help in many ways around the fellowship. They do everything from leading worship to teaching the children to cooking. They are beautiful examples of serving the lord with joy and humility.', '<p>The area known as Natanara is located about 20 minutes from Luganville down an “American road” built in World War Two by the Allies. Over 100,000 Americans at a time were in Luganville during the war to prevent the Japanese from completely capturing the Pacific. This was a staging area for the battles in the Solomon Islands. The remnants of World War Two are still put to good use. Virtually every road on Santo was built during the war and many buildings in town also date from this period. Natanara is a coastal area that is covered by coconut plantations and scattered settlements. The people of Natanara Christian Fellowship come from a large area with many walking over an hour and a half each way to church and back. Most of these people hail from other islands and speak different languages. It is not uncommon for the people in the fellowship to be conversant in five or more languages. Usually English is their third or fourth best language. The language most commonly used in Vanuatu is Bislama, which is a form of Pidgin English. This is the language that Pastor Floyd Bani and his assistants Steve Moli and Bradley Ngwera use in teaching the Bible.</p>\n\n<p>At Natanara fellowship, church is an all day event. Before the church family arrives, Pastor Floyd, Steve and Bradley must put in several hours in preparation. Beginning at 5:30 a.m. they rake the leaves that continually fall. With no running water, they make many trips carrying five gallon buckets to the various locations where fresh water will needed throughout the day. Then the process of making lunch begins with the boiling of three huge pots of rice. Rice is the staple that goes with every meal in Vanuatu. As early as eight o’clock people begin trickling in for the service that starts at ten. Some come to help, others come to rest and enjoy relaxing on the peaceful grounds. Lunch follows the service and is a time for fellowship and laughter. The children will often start a game of soccer, basketball, or just play together. Many of the older youth and adults play volleyball. Others escape the heat and humidity with a nap on the shaded grass while being cooled by the soft ocean breeze. Around half past four in the afternoon following a short time of worship, the church family begins dispersing and making their way back home. The only things to be seen at the close of the day are the coals of a burning fire in the darkness with the three men gathered around worshipping the Lord.</p>\n\n<p>Floyd Bani has been the pastor of Natanara Christian Fellowship for the last year and a half. He had spent the previous year as the children’s pastor in Fanafo before returning to Natanara. Floyd is a gifted Bible teacher who keeps the emphasis on Jesus Christ in a way that is refreshing. Steve Moli and Bradley Ngwera help in many ways around the fellowship. They do everything from leading worship to teaching the children to cooking. They are beautiful examples of serving the lord with joy and humility.</p>\n');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (18, 57, 'Fanafo Village is actually a grouping of many “mini villages” situated very closely together. It is about an hour’s drive from Natanara Christian Fellowship and 45 minutes from the town of Luganville. Fanafo is dotted with the remains of hastily built anti-aircraft bunkers and Quonset huts left by the Allied forces (primarily American) during World War Two. It is an area with several small churches but also with numerous people who are still following their tribal religions. This area was the home of a political rebellion in 1980 that came to a head when men from Fanafo took over Luganville using bows and arrows, spears and unearthed rifles left behind during WWII. They were successful until the government received assistance from Papua New Guinea who sent a gunship and threatened to quash the rebellion with overwhelming force. Fanafo still has many who would prefer to see Vanuatu return to the old ways and to remove all foreign influences.\r\n\r\nSeveral years ago, Pastor Zachy, returned to his home in Fanafo after graduating from Searchlight Bible College. He began sharing the Word of God with his family and with his relatives in the village. This was the beginning of Fanafo Christian Fellowship. Now Pastor Zachy has started another church in his area, splitting his time teaching each church two Sundays a month. The original church is located in his area of the village, while the other is over an hour’s trek through the jungle to a distant, smaller village. He has been doing this for several years now and is praying that the Lord will send him someone who knows the language who can also teach the people about the grace and freedom that are found in Jesus Christ.', '<p>Fanafo Village is actually a grouping of many “mini villages” situated very closely together. It is about an hour’s drive from Natanara Christian Fellowship and 45 minutes from the town of Luganville. Fanafo is dotted with the remains of hastily built anti-aircraft bunkers and Quonset huts left by the Allied forces (primarily American) during World War Two. It is an area with several small churches but also with numerous people who are still following their tribal religions. This area was the home of a political rebellion in 1980 that came to a head when men from Fanafo took over Luganville using bows and arrows, spears and unearthed rifles left behind during WWII. They were successful until the government received assistance from Papua New Guinea who sent a gunship and threatened to quash the rebellion with overwhelming force. Fanafo still has many who would prefer to see Vanuatu return to the old ways and to remove all foreign influences.</p>\n\n<p>Several years ago, Pastor Zachy, returned to his home in Fanafo after graduating from Searchlight Bible College. He began sharing the Word of God with his family and with his relatives in the village. This was the beginning of Fanafo Christian Fellowship. Now Pastor Zachy has started another church in his area, splitting his time teaching each church two Sundays a month. The original church is located in his area of the village, while the other is over an hour’s trek through the jungle to a distant, smaller village. He has been doing this for several years now and is praying that the Lord will send him someone who knows the language who can also teach the people about the grace and freedom that are found in Jesus Christ.</p>\n');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (20, 79, '### Weekend worship services\r\n\r\nSaturday Night at 6:00 PM  \r\nSunday Morning at 8:30 AM and 11:00 AM  \r\nAthey Creek Christian Fellowship  \r\n27520 SW 95th Ave  \r\nWilsonville, OR 97070  \r\n\r\nOur Saturday night and Sunday morning services are identical to one another. Like much of what we do at Athey, they are simple and casual. Acts 2:42 offers a clear description of what the early church was like. It is our desire to follow this model as closely as possible. Pastor Brett teaches book-by-book through the Bible. In these weekend worship services, the teaching usually highlights a particular verse or section from the upcoming midweek study.\r\n\r\nIn John 4:23, Jesus says that the Father seeks those who will worship Him \'in spirit and in truth.\' With this in mind, we endeavor to worship expressively and sincerely. Many of our songs are taken directly from passages of Scripture. The Word also directs that \"all things be done decently, and in order\" (I Corinthians 14:40). We desire to make Saturday Nights and Sunday mornings a time where you can feel comfortable bringing friends and family who may not know the Lord.\r\n\r\nWhile the adults are studying through the Word, our kids are being taught as well. We invite you take advantage of our children’s ministry program. We have found that the kids have more fun in their classes, learning about Jesus and playing with other kids, than sitting through the service. This way, parents are able to take in the Word without distraction and kids are able to learn in an age-appropriate environment. On Saturday nights and Sunday mornings we provide childcare during all of our services for infants through grade school.', '<h3>Weekend worship services</h3>\n\n<p>Saturday Night at 6:00 PM<br />\nSunday Morning at 8:30 AM and 11:00 AM<br />\nAthey Creek Christian Fellowship<br />\n27520 SW 95th Ave<br />\nWilsonville, OR 97070</p>\n\n<p>Our Saturday night and Sunday morning services are identical to one another. Like much of what we do at Athey, they are simple and casual. Acts 2:42 offers a clear description of what the early church was like. It is our desire to follow this model as closely as possible. Pastor Brett teaches book-by-book through the Bible. In these weekend worship services, the teaching usually highlights a particular verse or section from the upcoming midweek study.</p>\n\n<p>In John 4:23, Jesus says that the Father seeks those who will worship Him &#8216;in spirit and in truth.&#8217; With this in mind, we endeavor to worship expressively and sincerely. Many of our songs are taken directly from passages of Scripture. The Word also directs that &#8220;all things be done decently, and in order&#8221; (I Corinthians 14:40). We desire to make Saturday Nights and Sunday mornings a time where you can feel comfortable bringing friends and family who may not know the Lord.</p>\n\n<p>While the adults are studying through the Word, our kids are being taught as well. We invite you take advantage of our children’s ministry program. We have found that the kids have more fun in their classes, learning about Jesus and playing with other kids, than sitting through the service. This way, parents are able to take in the Word without distraction and kids are able to learn in an age-appropriate environment. On Saturday nights and Sunday mornings we provide childcare during all of our services for infants through grade school.</p>\n');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (43, 87, '### For those who want to connect with other believers in a smaller setting\r\n\r\n**2nd and 4th Sunday Nights**\r\n\r\n7:00 PM  \r\nAthey Creek Christian Fellowship  \r\n27520 SW 95th Ave  \r\nWilsonville, OR 97070\r\n\r\nJoin us for an evening devoted to worship, prayer and communion. This is a more personal time where we lift our hands, sing, stand, kneel or just sit quietly before the Lord. The elders are available during this service for those in need of prayer. Sunday Night Celebration takes place on the second and fourth Sunday of each month.', '<h3>For those who want to connect with other believers in a smaller setting</h3>\n\n<p><strong>2nd and 4th Sunday Nights</strong></p>\n\n<p>7:00 PM<br />\nAthey Creek Christian Fellowship<br />\n27520 SW 95th Ave<br />\nWilsonville, OR 97070</p>\n\n<p>Join us for an evening devoted to worship, prayer and communion. This is a more personal time where we lift our hands, sing, stand, kneel or just sit quietly before the Lord. The elders are available during this service for those in need of prayer. Sunday Night Celebration takes place on the second and fourth Sunday of each month.</p>\n');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (44, 89, '### Going deeper into God\'s Word\r\n\r\nWednesday Night  \r\n7:00 PM  \r\nAthey Creek Christian Fellowship  \r\n27520 SW 95th Ave  \r\nWilsonville, OR 97070\r\n\r\nWednesday nights are a time to grow in knowledge and understanding of the Word. We dig in with a verse-by-verse, chapter-by-chapter study of the Bible. Bring your Bible, a notebook and a heart ready to hear from the Lord.\r\n\r\nDuring this time, we have classes for our children, from infants through fifth grade. Our Junior High group meets in the back wing near the library for time in the Word, worship and loads of fun! For information on other studies, such as the High School group, or our College group, please refer to our ministries page.', '<h3>Going deeper into God&#8217;s Word</h3>\n\n<p>Wednesday Night<br />\n7:00 PM<br />\nAthey Creek Christian Fellowship<br />\n27520 SW 95th Ave<br />\nWilsonville, OR 97070</p>\n\n<p>Wednesday nights are a time to grow in knowledge and understanding of the Word. We dig in with a verse-by-verse, chapter-by-chapter study of the Bible. Bring your Bible, a notebook and a heart ready to hear from the Lord.</p>\n\n<p>During this time, we have classes for our children, from infants through fifth grade. Our Junior High group meets in the back wing near the library for time in the Word, worship and loads of fun! For information on other studies, such as the High School group, or our College group, please refer to our ministries page.</p>\n');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (37, 36, '### Growing closer in our walks with Jesus\r\n\r\nWhether you are up to your eyeballs in homework, or simply grinding away in the work force, we want to provide a place for you to come away and be renewed.  If you are 18-24 years of age, we invite you to join us on Tuesday nights for a time of worship, prayer and the study of God’s Word.  At a time when many people are falling into worldly thinking and behavior, we want to see our young adults growing in their knowledge of the Lord and in their relationships with Him. \r\n\r\nDavid & Becca Frost lead this ministry.  If you have any questions about Tuesday nights, or the various College & Career events, you can contact David at 503-781-1459.  Or you can click on the links below for more information about studies and activities.', '<h3>Growing closer in our walks with Jesus</h3>\n\n<p>Whether you are up to your eyeballs in homework, or simply grinding away in the work force, we want to provide a place for you to come away and be renewed.  If you are 18-24 years of age, we invite you to join us on Tuesday nights for a time of worship, prayer and the study of God’s Word.  At a time when many people are falling into worldly thinking and behavior, we want to see our young adults growing in their knowledge of the Lord and in their relationships with Him.</p>\n\n<p>David &amp; Becca Frost lead this ministry.  If you have any questions about Tuesday nights, or the various College &amp; Career events, you can contact David at 503-781-1459.  Or you can click on the links below for more information about studies and activities.</p>\n');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (38, 37, '### Mission work at Athey\r\n\r\nWe have been blessed with the love and goodness of the Lord here at Athey Creek. In response to this, many at Athey have naturally been motivated to step out in faith into a variety of mission fields – in Portland, throughout the U.S., and around the world. The Lord has opened up some amazing opportunities.\r\n\r\nThere are many ways to participate in mission work around the world. Through prayer, through giving, or through your own participation on a mission trip, it is wonderful to see the Great Commission in action! For some of us, our greatest mission field will be our families, or our neighbors, or perhaps someone at work. Jesus said, “The field is white unto harvest.” What a blessing it is that He allows us to be a part of the growing of His kingdom. We hope that you are encouraged as you fulfill the role He has ordained for you in this!\r\n\r\nChoose a mission from the right column to learn more about it. If you have any additional questions on our missions involvement contact the church office.', '<h3>Mission work at Athey</h3>\n\n<p>We have been blessed with the love and goodness of the Lord here at Athey Creek. In response to this, many at Athey have naturally been motivated to step out in faith into a variety of mission fields – in Portland, throughout the U.S., and around the world. The Lord has opened up some amazing opportunities.</p>\n\n<p>There are many ways to participate in mission work around the world. Through prayer, through giving, or through your own participation on a mission trip, it is wonderful to see the Great Commission in action! For some of us, our greatest mission field will be our families, or our neighbors, or perhaps someone at work. Jesus said, “The field is white unto harvest.” What a blessing it is that He allows us to be a part of the growing of His kingdom. We hope that you are encouraged as you fulfill the role He has ordained for you in this!</p>\n\n<p>Choose a mission from the right column to learn more about it. If you have any additional questions on our missions involvement contact the church office.</p>\n');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (39, 38, '### Caring for the kids of our fellowship\r\n\r\nThanks for checking out our Children’s Ministry web page.  The Lord has blessed us with a great bunch of kids at Athey Creek.  We enjoy sharing the love of Jesus with them in a safe and secure environment.  Feel free to click on the links on this page to get a better understanding of children’s ministry at Athey Creek.\r\n\r\nGod bless you,  \r\nJames\r\n', '<h3>Caring for the kids of our fellowship</h3>\n\n<p>Thanks for checking out our Children’s Ministry web page.  The Lord has blessed us with a great bunch of kids at Athey Creek.  We enjoy sharing the love of Jesus with them in a safe and secure environment.  Feel free to click on the links on this page to get a better understanding of children’s ministry at Athey Creek.</p>\n\n<p>God bless you,<br />\nJames</p>\n');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (42, 45, '### Mission work at Athey\r\n\r\nWe have been blessed with the love and goodness of the Lord here at Athey Creek. In response to this, many at Athey have naturally been motivated to step out in faith into a variety of mission fields – in Portland, throughout the U.S., and around the world. The Lord has opened up some amazing opportunities.\r\n\r\nThere are many ways to participate in mission work around the world. Through prayer, through giving, or through your own participation on a mission trip, it is wonderful to see the Great Commission in action! For some of us, our greatest mission field will be our families, or our neighbors, or perhaps someone at work. Jesus said, “The field is white unto harvest.” What a blessing it is that He allows us to be a part of the growing of His kingdom. We hope that you are encouraged as you fulfill the role He has ordained for you in this!\r\n\r\nChoose a mission from the right column to learn more about it. If you have any additional questions on our missions involvement contact the church office.', '<h3>Mission work at Athey</h3>\n\n<p>We have been blessed with the love and goodness of the Lord here at Athey Creek. In response to this, many at Athey have naturally been motivated to step out in faith into a variety of mission fields – in Portland, throughout the U.S., and around the world. The Lord has opened up some amazing opportunities.</p>\n\n<p>There are many ways to participate in mission work around the world. Through prayer, through giving, or through your own participation on a mission trip, it is wonderful to see the Great Commission in action! For some of us, our greatest mission field will be our families, or our neighbors, or perhaps someone at work. Jesus said, “The field is white unto harvest.” What a blessing it is that He allows us to be a part of the growing of His kingdom. We hope that you are encouraged as you fulfill the role He has ordained for you in this!</p>\n\n<p>Choose a mission from the right column to learn more about it. If you have any additional questions on our missions involvement contact the church office.</p>\n');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (40, 39, 'Our goal in the Jr. High Ministry is to worship the Lord, study the Bible and enjoy great fellowship. Whether we’re meeting on a Wednesday night or on one of our many trips, we always have an awesome time.  \r\nAs we study through the Bible, we learn what Jesus has done for us and how we should live our lives for Him. Come ready to worship the Lord, dig into the Word and have tons of crazy fun!\r\n\r\nIf you would like information on Bible Studies and Upcoming Events, check out the links below.  You can also visit the Jr. High Blog to see the latest pictures from recent Jr. High activities!\r\n\r\nIf you have any questions, you can contact Seth at (503) 984-6605.', '<p>Our goal in the Jr. High Ministry is to worship the Lord, study the Bible and enjoy great fellowship. Whether we’re meeting on a Wednesday night or on one of our many trips, we always have an awesome time.<br />\nAs we study through the Bible, we learn what Jesus has done for us and how we should live our lives for Him. Come ready to worship the Lord, dig into the Word and have tons of crazy fun!</p>\n\n<p>If you would like information on Bible Studies and Upcoming Events, check out the links below.  You can also visit the Jr. High Blog to see the latest pictures from recent Jr. High activities!</p>\n\n<p>If you have any questions, you can contact Seth at (503) 984-6605.</p>\n');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (41, 40, 'The vision for our High School ministry is simply this: to know Jesus.  We get together each week to learn more about the person of Jesus and the impact He wants to make in our lives.  Through time spent in worship, in prayer and in studying His Word, He becomes more and more personal to each one of us.  This is the whole reason we get together at the ‘Shed’ every Thursday night.\r\n\r\nFellowship is an important part of what we do as well.  It is a huge blessing to have Christian friends walking this same path with us. The trips and events we do are always fun and a little crazy, but even these times are geared around the same purpose of knowing Jesus better.  So whether we’re on a snowy mountain or hanging out at the beach, we always have time to open up the Bible and learn more about Jesus. \r\n\r\nTake a look at the Bible Studies and Upcoming Events links below to see what’s happening right now. Also, don\'t forget to check out the High School Ministry\'s very own website below!\r\nIf you have any questions, contact Abe Menshenfriend at (971)222-9586.', '<p>The vision for our High School ministry is simply this: to know Jesus.  We get together each week to learn more about the person of Jesus and the impact He wants to make in our lives.  Through time spent in worship, in prayer and in studying His Word, He becomes more and more personal to each one of us.  This is the whole reason we get together at the ‘Shed’ every Thursday night.</p>\n\n<p>Fellowship is an important part of what we do as well.  It is a huge blessing to have Christian friends walking this same path with us. The trips and events we do are always fun and a little crazy, but even these times are geared around the same purpose of knowing Jesus better.  So whether we’re on a snowy mountain or hanging out at the beach, we always have time to open up the Bible and learn more about Jesus.</p>\n\n<p>Take a look at the Bible Studies and Upcoming Events links below to see what’s happening right now. Also, don&#8217;t forget to check out the High School Ministry&#8217;s very own website below!\nIf you have any questions, contact Abe Menshenfriend at (971)222-9586.</p>\n');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (53, 92, '### Mike & Kelli Anderson\r\n\r\nEmily 3 and Lydia 1 & 1/2\r\n\r\nMike and Kelli are working with Wycliffe as Bible translators in Brazil. Three years ago, they moved to Brazil, hoping to translate God’s Word into an indigenous language.  They are building relationships in the communities and connecting with people in an effort to learn this intricate new language.  Athey Creek Christian Fellowship is glad to support them prayerfully and financially. Last year they traveled to Dallas, Texas for a delicate skull surgery for their youngest daughter.  While she was recovering, they also took a few linguistics courses, and are now back in Brazil.\r\n\r\n### Prayer requests\r\n\r\nWe praise the Lord for your continued prayers and for the opportunity to share our ministry with you.  We are excited to be back in Brazil despite a hard first term, and to be starting fresh in new jump-off town. We also praise Him for Lydia’s successful craniosynostosis surgery while in the States!', '<h3>Mike &amp; Kelli Anderson</h3>\n\n<p>Emily 3 and Lydia 1 &amp; 1/2</p>\n\n<p>Mike and Kelli are working with Wycliffe as Bible translators in Brazil. Three years ago, they moved to Brazil, hoping to translate God’s Word into an indigenous language.  They are building relationships in the communities and connecting with people in an effort to learn this intricate new language.  Athey Creek Christian Fellowship is glad to support them prayerfully and financially. Last year they traveled to Dallas, Texas for a delicate skull surgery for their youngest daughter.  While she was recovering, they also took a few linguistics courses, and are now back in Brazil.</p>\n\n<h3>Prayer requests</h3>\n\n<p>We praise the Lord for your continued prayers and for the opportunity to share our ministry with you.  We are excited to be back in Brazil despite a hard first term, and to be starting fresh in new jump-off town. We also praise Him for Lydia’s successful craniosynostosis surgery while in the States!</p>\n');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (54, 93, '### Daniel and Elizabeth Delma\r\n\r\nIn 1993, years before ACCF had even begun, the Lord allowed Pastor Brett to travel to Burkina Faso to teach at a pastor’s conference.  In his time there, some long-lasting friendships were established, which the Lord has continued to bless.  One such friend is Pastor Daniel Delma.  Pastor Daniel shepherds a church on the outskirts of the city of Ouagadougou.  Through the church, Daniel and his wife minister to the widows in the area by providing for the basic needs of these ladies and their children.  Daniel also spends much of his time leading and teaching pastors throughout the country.  He is working with another good friend and brother of ACCF, pastor Marcel Yanogo, to instruct pastors throughout Burkina Faso in how to teach through God’s Word verse-by-verse.  We are blessed to play a small role in the ministries of Daniel, Marcel, and many other Burkinabe pastors as we have had the opportunity to send Athey Creekers over to minister with them in pastor’s conferences, kid’s camps and other ministry opportunities.\r\n\r\n### Prayer requests\r\n\r\nThe Lord continues to bless the people of Burkina as His Spirit moves throughout the country spreading the Good News of His salvation. Please join with us in praying that the Lord would raise up men throughout Burkina Faso to teach His Word.  May the Lord continue to send teachers to help train these men as they minister.  There is also a constant need for the provision of rain for the crops so that the people might have food and healthy drinking water.  As a result of consistent famine and disease, prayer for the Lord’s healing is always needed.  Thank you so much for your prayers.  We are blessed by the Lord’s continued provision and covering and we look forward to ministering together with you for many years to come.', '<h3>Daniel and Elizabeth Delma</h3>\n\n<p>In 1993, years before ACCF had even begun, the Lord allowed Pastor Brett to travel to Burkina Faso to teach at a pastor’s conference.  In his time there, some long-lasting friendships were established, which the Lord has continued to bless.  One such friend is Pastor Daniel Delma.  Pastor Daniel shepherds a church on the outskirts of the city of Ouagadougou.  Through the church, Daniel and his wife minister to the widows in the area by providing for the basic needs of these ladies and their children.  Daniel also spends much of his time leading and teaching pastors throughout the country.  He is working with another good friend and brother of ACCF, pastor Marcel Yanogo, to instruct pastors throughout Burkina Faso in how to teach through God’s Word verse-by-verse.  We are blessed to play a small role in the ministries of Daniel, Marcel, and many other Burkinabe pastors as we have had the opportunity to send Athey Creekers over to minister with them in pastor’s conferences, kid’s camps and other ministry opportunities.</p>\n\n<h3>Prayer requests</h3>\n\n<p>The Lord continues to bless the people of Burkina as His Spirit moves throughout the country spreading the Good News of His salvation. Please join with us in praying that the Lord would raise up men throughout Burkina Faso to teach His Word.  May the Lord continue to send teachers to help train these men as they minister.  There is also a constant need for the provision of rain for the crops so that the people might have food and healthy drinking water.  As a result of consistent famine and disease, prayer for the Lord’s healing is always needed.  Thank you so much for your prayers.  We are blessed by the Lord’s continued provision and covering and we look forward to ministering together with you for many years to come.</p>\n');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (55, 94, '### Gino and Darcy Canesssa\r\n\r\n*They were married on July 24th, 2009!*\r\n\r\nLima is the large, heavily populated, capital city of Peru.  It is predominantly Catholic, and the country is filled with people imprisoned by empty, repetitious customs.  We are currently ministering in three distinct areas inside of Lima, one where we live in the city (Magdalena) and two in the outskirts (Ventanilla and Pachacutec).  The outlying areas of Lima are extremely poverty-stricken with houses built into the dirt hillsides.  The physical hunger in Lima is only surpassed by a spiritual hunger.  So we are continually pointing people to Jesus, and He has been faithful to open doors to share Him with people!  We are involved with ministries for children and youth (teaching and outreach), discipleship of Calvary Chapel Bible College students and young men & women of Lima, teaching at the Bible college and ministering at the Calvary Chapel Church of Magdalena.\r\n\r\n### Prayer requests\r\n\r\nPraise Jesus because He is so good!  We cannot do anything without Him.  We thank you for praying for us!  We ask that you would join us in praying for the following:\r\n\r\n- That Jesus would always be the center of our marriage and our home\r\n- That it would always be Jesus who ministers through us\r\n- That we would be filled with and guided by the Holy Spirit\r\n- Darci´s health\r\n- Gino´s teachings throughout the week\r\n- That God would reach His people and transform their lives for His glory\r\n- For the many youth and kids that we are ministering to', '<h3>Gino and Darcy Canesssa</h3>\n\n<p><em>They were married on July 24th, 2009!</em></p>\n\n<p>Lima is the large, heavily populated, capital city of Peru.  It is predominantly Catholic, and the country is filled with people imprisoned by empty, repetitious customs.  We are currently ministering in three distinct areas inside of Lima, one where we live in the city (Magdalena) and two in the outskirts (Ventanilla and Pachacutec).  The outlying areas of Lima are extremely poverty-stricken with houses built into the dirt hillsides.  The physical hunger in Lima is only surpassed by a spiritual hunger.  So we are continually pointing people to Jesus, and He has been faithful to open doors to share Him with people!  We are involved with ministries for children and youth (teaching and outreach), discipleship of Calvary Chapel Bible College students and young men &amp; women of Lima, teaching at the Bible college and ministering at the Calvary Chapel Church of Magdalena.</p>\n\n<h3>Prayer requests</h3>\n\n<p>Praise Jesus because He is so good!  We cannot do anything without Him.  We thank you for praying for us!  We ask that you would join us in praying for the following:</p>\n\n<ul>\n<li>That Jesus would always be the center of our marriage and our home</li>\n<li>That it would always be Jesus who ministers through us</li>\n<li>That we would be filled with and guided by the Holy Spirit</li>\n<li>Darci´s health</li>\n<li>Gino´s teachings throughout the week</li>\n<li>That God would reach His people and transform their lives for His glory</li>\n<li>For the many youth and kids that we are ministering to</li>\n</ul>\n');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (56, 95, '### Jesse & Krista Ashmen\r\n\r\nEleri 1\r\n\r\nWe are missionaries with Torchbearers in Holsbybrunn, Sweden. We live on campus with 50 students who have come to learn more about what it means to be a Christ-follower. Students come from all over the world and are taught by both resident lecturers (like Jesse) and guest lecturers that fly in from different parts of the world. At Holsby, we’re involved with outreaches to the local and greater community. Most recently we led a mission trip to Göteborg, which was an incredible experience. We are very thankful for the life and opportunities God has given us. We hope to continue making a difference in the lives He sends our way. \r\n\r\n### Prayer requests\r\n\r\n- For our ministry:\r\n  - Please be praying that the Lord would continue to bring willing and eager students despite the worldwide economic recession.\r\n  - We have a need for able short-term staff members willing to serve in maintenance, hospitality or an adventure team.  Please pray that the Lord provides the right people for these roles.\r\n  - Our campus will serve as the holiday grounds for nearly 1,000 Swedes during one of our biggest Scandinavian holidays – Midsomer.  Join us in praying for the logistics, which can be challenging, as well our opportunity to reach out to these listeners as many of them have no relationship with the Lord.\r\n- For us personally:\r\n  - We have been blessed with our first child, Eleri.  Like all new parents, we need prayer for wisdom, patience and love for our little girl.', '<h3>Jesse &amp; Krista Ashmen</h3>\n\n<p>Eleri 1</p>\n\n<p>We are missionaries with Torchbearers in Holsbybrunn, Sweden. We live on campus with 50 students who have come to learn more about what it means to be a Christ-follower. Students come from all over the world and are taught by both resident lecturers (like Jesse) and guest lecturers that fly in from different parts of the world. At Holsby, we’re involved with outreaches to the local and greater community. Most recently we led a mission trip to Göteborg, which was an incredible experience. We are very thankful for the life and opportunities God has given us. We hope to continue making a difference in the lives He sends our way.</p>\n\n<h3>Prayer requests</h3>\n\n<ul>\n<li>For our ministry:\n\n<ul>\n<li>Please be praying that the Lord would continue to bring willing and eager students despite the worldwide economic recession.</li>\n<li>We have a need for able short-term staff members willing to serve in maintenance, hospitality or an adventure team.  Please pray that the Lord provides the right people for these roles.</li>\n<li>Our campus will serve as the holiday grounds for nearly 1,000 Swedes during one of our biggest Scandinavian holidays – Midsomer.  Join us in praying for the logistics, which can be challenging, as well our opportunity to reach out to these listeners as many of them have no relationship with the Lord.</li>\n</ul></li>\n<li>For us personally:\n\n<ul>\n<li>We have been blessed with our first child, Eleri.  Like all new parents, we need prayer for wisdom, patience and love for our little girl.</li>\n</ul></li>\n</ul>\n');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (57, 96, '### Randy and Alisa Varga           \r\n\r\nRandy, Alisa, Josh, Eli and Gabe Varga\r\n\r\nRandy and Alisa are in Kampala Uganda to help serve at a mission base. Their vision is to share the gospel, to love on the kids and to be a godly example for those they will encounter in Uganda. The Vargas will primarily be serving at Hope Christian Home, a big facility that houses and feeds several hundred orphans. In addition to serving at the mission they hope to share the gospel anywhere from prisons, to radio stations, to the streets of Uganda. Currently Randy, a contractor himself, is helping with the construction of a new building project called the Field of Dreams which will be able to house more missionaries and orphans.\r\n\r\n### Prayer requests\r\n\r\nHey church family! We have been so blessed to be a part of Athey and are really excited to be in Uganda to do God’s work! We thank you deeply for your prayers and are glad to know that the Lord’s work is done in Wilsonville as well as in Uganda.', '<h3>Randy and Alisa Varga</h3>\n\n<p>Randy, Alisa, Josh, Eli and Gabe Varga</p>\n\n<p>Randy and Alisa are in Kampala Uganda to help serve at a mission base. Their vision is to share the gospel, to love on the kids and to be a godly example for those they will encounter in Uganda. The Vargas will primarily be serving at Hope Christian Home, a big facility that houses and feeds several hundred orphans. In addition to serving at the mission they hope to share the gospel anywhere from prisons, to radio stations, to the streets of Uganda. Currently Randy, a contractor himself, is helping with the construction of a new building project called the Field of Dreams which will be able to house more missionaries and orphans.</p>\n\n<h3>Prayer requests</h3>\n\n<p>Hey church family! We have been so blessed to be a part of Athey and are really excited to be in Uganda to do God’s work! We thank you deeply for your prayers and are glad to know that the Lord’s work is done in Wilsonville as well as in Uganda.</p>\n');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (52, 97, '### Tad and Marna Slaughter\r\n\r\nJoel (Wheaton), Amy (Wheaton) and John\r\n\r\nThe Islands of Vanuatu are located in the South Pacific west of Fiji.  In the late 1800’s the first missionaries came to these fierce cannibalistic islands.  In an amazingly brief space of time many became Christians with entire populations of some islands coming to Christ.  In spite of this, there is little teaching through the Bible today.  Consequently, there is a huge hunger for the Word and many opportunities for sharing with people.  Our work is to help people know Jesus and love Him more as a result of learning who He is through the study of His Word.\r\n\r\n### Prayer requests\r\n\r\nThe Lord has been adding to and blessing the church here, for which we are thankful.  We are also thankful for the Lord’s constant provision of everything we need - wisdom, direction and daily necessities.  Please pray that the Lord would provide safe transportation for the new people who have begun to attend the fellowship (our truck is simply not enough), and that the people coming to church would truly comprehend God’s grace and mercy in their lives.  Pray for discernment that we would know which of the open doors the Lord has for US since there are so many possibilities! ', '<h3>Tad and Marna Slaughter</h3>\n\n<p>Joel (Wheaton), Amy (Wheaton) and John</p>\n\n<p>The Islands of Vanuatu are located in the South Pacific west of Fiji.  In the late 1800’s the first missionaries came to these fierce cannibalistic islands.  In an amazingly brief space of time many became Christians with entire populations of some islands coming to Christ.  In spite of this, there is little teaching through the Bible today.  Consequently, there is a huge hunger for the Word and many opportunities for sharing with people.  Our work is to help people know Jesus and love Him more as a result of learning who He is through the study of His Word.</p>\n\n<h3>Prayer requests</h3>\n\n<p>The Lord has been adding to and blessing the church here, for which we are thankful.  We are also thankful for the Lord’s constant provision of everything we need - wisdom, direction and daily necessities.  Please pray that the Lord would provide safe transportation for the new people who have begun to attend the fellowship (our truck is simply not enough), and that the people coming to church would truly comprehend God’s grace and mercy in their lives.  Pray for discernment that we would know which of the open doors the Lord has for US since there are so many possibilities!</p>\n');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (58, 101, 'For your convenience we now have the ability to accept tithes and offerings electronically via our online giving page.  We use PayPal for our financial transactions to guarantee that your funds transfers are private and secure. \r\n\r\nAthey Creek is faithfully committed to good stewardship and integrity in the management of the resources God has provided us. \r\n\r\nThank you for your heart of giving to the Lord!\r\n\r\n**[Give here »](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=M68CFZVMTZFNY)**', '<p>For your convenience we now have the ability to accept tithes and offerings electronically via our online giving page.  We use PayPal for our financial transactions to guarantee that your funds transfers are private and secure.</p>\n\n<p>Athey Creek is faithfully committed to good stewardship and integrity in the management of the resources God has provided us.</p>\n\n<p>Thank you for your heart of giving to the Lord!</p>\n\n<p><strong><a href=\"https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&amp;hosted_button_id=M68CFZVMTZFNY\">Give here »</a></strong></p>\n');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (63, 104, '### If you would like to get in touch with us, please feel free to call or drop by the church office.\r\n\r\n**Church Office**\r\n\r\n- Phone (971) 327-2120\r\n- Fax (971) 327-2123\r\n- Address  \r\n27520 SW 95th Ave  \r\nWilsonville, OR 97070\r\n- Mail  \r\nP.O. Box 534  \r\nTualatin, OR 97062\r\n- Office Hours\r\n  - 9:00 AM to 5:00 PM - Tues, Thur, Fri\r\n  - 9:00 AM to 12:00 PM - Wed\r\n  - Closed Monday', '<h3>If you would like to get in touch with us, please feel free to call or drop by the church office.</h3>\n\n<p><strong>Church Office</strong></p>\n\n<ul>\n<li>Phone (971) 327-2120</li>\n<li>Fax (971) 327-2123</li>\n<li>Address<br />\n27520 SW 95th Ave<br />\nWilsonville, OR 97070</li>\n<li>Mail<br />\nP.O. Box 534<br />\nTualatin, OR 97062</li>\n<li>Office Hours\n\n<ul>\n<li>9:00 AM to 5:00 PM - Tues, Thur, Fri</li>\n<li>9:00 AM to 12:00 PM - Wed</li>\n<li>Closed Monday</li>\n</ul></li>\n</ul>\n');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (60, 106, '### Opportunities for fellowship', '<h3>Opportunities for fellowship</h3>\n');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (61, 108, '### There are a variety of other Bible studies and fellowship opportunities throughout the week.', '<h3>There are a variety of other Bible studies and fellowship opportunities throughout the week.</h3>\n');

-- *** STRUCTURE: `tbl_entries_data_37` ***
DROP TABLE IF EXISTS `tbl_entries_data_37`;
CREATE TABLE `tbl_entries_data_37` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_37` ***
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 21, 'home', 'Home');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (43, 34, 'bulletin-board', 'Bulletin board');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (34, 35, 'womens', 'Women\'s');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (35, 36, 'college-and-career', 'College and Career');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (36, 37, 'missions', 'Missions');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 38, 'childrens', 'Children\'s');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (38, 39, 'junior-high', 'Junior High');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (39, 40, 'high-school', 'High School');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (40, 45, 'missions', 'Missions');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 53, 'the-islands-of-vanuatu', 'The Islands of Vanuatu');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 55, 'natanara-christian-fellowship', 'Natanara Christian Fellowship');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 57, 'fanafo-christian-fellowship', 'Fanafo Christian Fellowship');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 79, 'saturday-night', 'Saturday night');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (18, 79, 'sunday-morning', 'Sunday morning');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (41, 87, 'celebration', 'Celebration');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (42, 89, 'wednesday-night', 'Wednesday night');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (51, 92, 'brazil', 'Brazil');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (52, 93, 'burkina-faso', 'Burkina Faso');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (53, 94, 'peru', 'Peru');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (54, 95, 'sweden', 'Sweden');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (55, 96, 'uganda', 'Uganda');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (50, 97, 'vanuatu', 'Vanuatu');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (56, 101, 'online-giving', 'Online giving');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (58, 106, 'meetings', 'Meetings');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (59, 108, 'bible-studies', 'Bible studies');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (62, 104, 'contact-us', 'Contact us');

-- *** STRUCTURE: `tbl_entries_data_38` ***
DROP TABLE IF EXISTS `tbl_entries_data_38`;
CREATE TABLE `tbl_entries_data_38` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_38` ***
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 26, '2-chron-20-29-30', '2 Chron 20:29-30');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 41, 'romans-5-8', 'Romans 5:8');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 80, 'hebrews-10-24-25', 'Hebrews 10:24-25');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 86, 'psalm-73-28', 'Psalm 73:28');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (18, 88, 'colossians-3-16', 'Colossians 3:16');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (19, 99, 'malachi-3-10', 'Malachi 3:10');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (20, 103, 'galatians-6-10', 'Galatians 6:10');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (21, 107, 'colossians-2-6-7', 'Colossians 2:6-7');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (22, 109, '2-timothy-3-16-17', '2 Timothy 3:16-17');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 126, 'mark-16-15', 'Mark 16:15');

-- *** STRUCTURE: `tbl_entries_data_39` ***
DROP TABLE IF EXISTS `tbl_entries_data_39`;
CREATE TABLE `tbl_entries_data_39` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_39` ***
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 26, 'israel', 'Israel');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 41, 'high-school-ministry', 'High School ministry');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 80, 'saturday-night', 'Saturday night');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (18, 80, 'sunday-morning', 'Sunday morning');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (20, 86, 'celebration', 'Celebration');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (21, 88, 'wednesday-night', 'Wednesday night');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (22, 99, 'online-giving', 'Online giving');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (23, 103, 'contact-us', 'Contact us');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (24, 107, 'meetings', 'Meetings');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (25, 109, 'bible-studies', 'Bible studies');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (35, 126, 'missions', 'Missions');

-- *** STRUCTURE: `tbl_entries_data_41` ***
DROP TABLE IF EXISTS `tbl_entries_data_41`;
CREATE TABLE `tbl_entries_data_41` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_41` ***
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 42, 'medical-release-form', 'Medical release form');

-- *** STRUCTURE: `tbl_entries_data_42` ***
DROP TABLE IF EXISTS `tbl_entries_data_42`;
CREATE TABLE `tbl_entries_data_42` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `size` int(11) unsigned NOT NULL,
  `mimetype` varchar(50) DEFAULT NULL,
  `meta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_42` ***
INSERT INTO `tbl_entries_data_42` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (12, 42, '/uploads/files/Medical_Authorization_2011-1298407980.pdf', 13388, 'unknown', 'a:1:{s:8:\"creation\";s:25:\"2011-02-22T12:52:59-08:00\";}');

-- *** STRUCTURE: `tbl_entries_data_43` ***
DROP TABLE IF EXISTS `tbl_entries_data_43`;
CREATE TABLE `tbl_entries_data_43` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_43` ***
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (12, 42, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_44` ***
DROP TABLE IF EXISTS `tbl_entries_data_44`;
CREATE TABLE `tbl_entries_data_44` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_44` ***
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 42, 'junior-high', 'Junior High');
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `handle`, `value`) VALUES (35, 42, 'childrens', 'Children\'s');
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `handle`, `value`) VALUES (36, 42, 'high-school', 'High School');

-- *** STRUCTURE: `tbl_entries_data_45` ***
DROP TABLE IF EXISTS `tbl_entries_data_45`;
CREATE TABLE `tbl_entries_data_45` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_45` ***
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (57, 44, NULL, NULL);
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (132, 31, 'ministries', 'Ministries');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (63, 32, 'ministries', 'Ministries');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (134, 30, 'ministries', 'Ministries');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (131, 28, 'ministries', 'Ministries');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (129, 123, NULL, NULL);
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (82, 47, 'missions', 'Missions');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (83, 48, 'missions', 'Missions');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (81, 49, 'missions', 'Missions');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (80, 50, 'missions', 'Missions');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (28, 51, 'missions', 'Missions');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (90, 54, 'vanuatu', 'Vanuatu');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (114, 114, NULL, NULL);
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (109, 64, 'events', 'Events');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (25, 72, 'meetings', 'Meetings');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (38, 73, 'meetings', 'Meetings');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (76, 77, 'missions', 'Missions');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (70, 33, NULL, NULL);
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (98, 46, 'missions', 'Missions');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (51, 82, 'meetings', 'Meetings');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (52, 83, 'meetings', 'Meetings');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (74, 84, 'meetings', 'Meetings');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (75, 85, 'meetings', 'Meetings');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (73, 29, 'ministries', 'Ministries');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (67, 27, 'ministries', 'Ministries');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (66, 90, 'community', 'Community');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (111, 91, 'about', 'About');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (133, 124, 'ministries', 'Ministries');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (130, 98, 'unknown', 'Unknown');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (121, 102, 'about', 'About');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (101, 56, 'vanuatu', 'Vanuatu');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (106, 115, NULL, NULL);
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (108, 116, NULL, NULL);
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (110, 19, 'missions', 'Missions');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (113, 22, NULL, NULL);
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (127, 117, 'about', 'About');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (126, 118, 'about', 'About');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (125, 119, 'about', 'About');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (136, 120, 'about', 'About');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (119, 121, 'about', 'About');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (120, 122, 'about', 'About');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (122, 102, 'community', 'Community');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (123, 102, 'home', 'Home');

-- *** STRUCTURE: `tbl_entries_data_46` ***
DROP TABLE IF EXISTS `tbl_entries_data_46`;
CREATE TABLE `tbl_entries_data_46` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_46` ***
INSERT INTO `tbl_entries_data_46` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 52, 'vanuatu-on-wikipedia', 'Vanuatu on Wikipedia');
INSERT INTO `tbl_entries_data_46` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 58, 'uganda-on-wikipedia', 'Uganda on Wikipedia');
INSERT INTO `tbl_entries_data_46` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 59, 'jesse-and-kristas-website', 'Jesse and Krista\'s website');
INSERT INTO `tbl_entries_data_46` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 60, 'peru-on-wikipedia', 'Peru on Wikipedia');
INSERT INTO `tbl_entries_data_46` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 61, 'burkina-faso-on-wikipedia', 'Burkina Faso on Wikipedia');
INSERT INTO `tbl_entries_data_46` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 62, 'brazil-on-wikipedia', 'Brazil on Wikipedia');
INSERT INTO `tbl_entries_data_46` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 63, 'sweden-on-wikipedia', 'Sweden on Wikipedia');

-- *** STRUCTURE: `tbl_entries_data_47` ***
DROP TABLE IF EXISTS `tbl_entries_data_47`;
CREATE TABLE `tbl_entries_data_47` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_47` ***
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 52, 'http-enwikipediaorg-wiki-vanuatu', 'http://en.wikipedia.org/wiki/Vanuatu');
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 58, 'http-enwikipediaorg-wiki-uganda', 'http://en.wikipedia.org/wiki/Uganda');
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 59, 'http-webmaccom-xero-the-ashmens-welcomehtml', 'http://web.mac.com/xero/The_Ashmens/Welcome.html');
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 60, 'http-enwikipediaorg-wiki-peru', 'http://en.wikipedia.org/wiki/Peru');
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 61, 'http-enwikipediaorg-wiki-burkina-faso', 'http://en.wikipedia.org/wiki/Burkina_Faso');
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 62, 'http-enwikipediaorg-wiki-brazil', 'http://en.wikipedia.org/wiki/Brazil');
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 63, 'http-enwikipediaorg-wiki-sweden', 'http://en.wikipedia.org/wiki/Sweden');

-- *** STRUCTURE: `tbl_entries_data_48` ***
DROP TABLE IF EXISTS `tbl_entries_data_48`;
CREATE TABLE `tbl_entries_data_48` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_48` ***
INSERT INTO `tbl_entries_data_48` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 52, 'the-islands-of-vanuatu', 'The Islands of Vanuatu');
INSERT INTO `tbl_entries_data_48` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 58, 'kampala-uganda', 'Kampala, Uganda');
INSERT INTO `tbl_entries_data_48` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 59, 'holsbybrunn-sweden', 'Holsbybrunn, Sweden');
INSERT INTO `tbl_entries_data_48` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 60, 'lima-peru', 'Lima, Peru');
INSERT INTO `tbl_entries_data_48` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 61, 'ouagadougou-burkina-faso', 'Ouagadougou, Burkina Faso');
INSERT INTO `tbl_entries_data_48` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 62, 'brazil', 'Brazil');
INSERT INTO `tbl_entries_data_48` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 63, 'holsbybrunn-sweden', 'Holsbybrunn, Sweden');

-- *** STRUCTURE: `tbl_entries_data_49` ***
DROP TABLE IF EXISTS `tbl_entries_data_49`;
CREATE TABLE `tbl_entries_data_49` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_49` ***
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (106, 22, 2);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (66, 27, 9);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (122, 28, 14);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (72, 29, 13);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (125, 30, 12);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (123, 31, 10);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (62, 32, 8);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (69, 33, 7);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (56, 44, 6);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (92, 46, 21);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (81, 47, 18);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (82, 48, 16);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (80, 49, 19);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (79, 50, 20);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (30, 51, 17);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (86, 54, 23);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (94, 56, 22);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (102, 64, 24);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (75, 77, 32);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (103, 19, 29);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (40, 73, 31);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (27, 72, 30);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (65, 90, 33);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (50, 82, 26);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (51, 83, 25);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (73, 84, 28);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (74, 85, 27);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (104, 91, 34);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (121, 98, 35);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (114, 102, 36);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (107, 114, 3);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (99, 115, 4);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (101, 116, 5);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (118, 117, 37);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (117, 118, 38);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (116, 119, 39);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (127, 120, 15);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (112, 121, 40);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (113, 122, 41);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (120, 123, 1);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (124, 124, 11);

-- *** STRUCTURE: `tbl_entries_data_5` ***
DROP TABLE IF EXISTS `tbl_entries_data_5`;
CREATE TABLE `tbl_entries_data_5` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_5` ***
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `username`, `password`) VALUES (3, 1, 'kirkstrobeck', '199aa97af20bc24339c1dfae5f94766c');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `username`, `password`) VALUES (4, 3, 'kirk_strobeck2', '199aa97af20bc24339c1dfae5f94766c');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `username`, `password`) VALUES (5, 69, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_50` ***
DROP TABLE IF EXISTS `tbl_entries_data_50`;
CREATE TABLE `tbl_entries_data_50` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_50` ***
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 68, 'accf-sanctuary', 'ACCF sanctuary');
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 110, 'villahermosa', 'Villahermosa');

-- *** STRUCTURE: `tbl_entries_data_51` ***
DROP TABLE IF EXISTS `tbl_entries_data_51`;
CREATE TABLE `tbl_entries_data_51` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_51` ***
INSERT INTO `tbl_entries_data_51` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (5, 68, NULL, NULL);
INSERT INTO `tbl_entries_data_51` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 110, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_52` ***
DROP TABLE IF EXISTS `tbl_entries_data_52`;
CREATE TABLE `tbl_entries_data_52` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_52` ***
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 68, '27520-sw-95th-avenue', '27520 SW 95th Avenue');

-- *** STRUCTURE: `tbl_entries_data_53` ***
DROP TABLE IF EXISTS `tbl_entries_data_53`;
CREATE TABLE `tbl_entries_data_53` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_53` ***
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 68, 'wilsonville', 'Wilsonville');

-- *** STRUCTURE: `tbl_entries_data_54` ***
DROP TABLE IF EXISTS `tbl_entries_data_54`;
CREATE TABLE `tbl_entries_data_54` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_54` ***
INSERT INTO `tbl_entries_data_54` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 68, 'or', 'OR');

-- *** STRUCTURE: `tbl_entries_data_55` ***
DROP TABLE IF EXISTS `tbl_entries_data_55`;
CREATE TABLE `tbl_entries_data_55` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_55` ***
INSERT INTO `tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 68, 97070, 97070);

-- *** STRUCTURE: `tbl_entries_data_56` ***
DROP TABLE IF EXISTS `tbl_entries_data_56`;
CREATE TABLE `tbl_entries_data_56` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_56` ***
INSERT INTO `tbl_entries_data_56` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 68, 'us', 'US');

-- *** STRUCTURE: `tbl_entries_data_57` ***
DROP TABLE IF EXISTS `tbl_entries_data_57`;
CREATE TABLE `tbl_entries_data_57` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_57` ***
INSERT INTO `tbl_entries_data_57` (`id`, `entry_id`, `handle`, `value`) VALUES (18, 71, 'a-divine-look-at-motherhood', 'A Divine Look at Motherhood');
INSERT INTO `tbl_entries_data_57` (`id`, `entry_id`, `handle`, `value`) VALUES (19, 74, 'revelation-study', 'Revelation Study');
INSERT INTO `tbl_entries_data_57` (`id`, `entry_id`, `handle`, `value`) VALUES (16, 75, 'morning-worship', 'Morning Worship');

-- *** STRUCTURE: `tbl_entries_data_58` ***
DROP TABLE IF EXISTS `tbl_entries_data_58`;
CREATE TABLE `tbl_entries_data_58` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_58` ***
INSERT INTO `tbl_entries_data_58` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (18, 71, 'Please join us as we explore God’s plan for parenting. This 5 week series will provide an opportunity to dig into God’s Word and discover some serious Mom skills! Note: Childcare will be provided for single mothers.', '<p>Please join us as we explore God’s plan for parenting. This 5 week series will provide an opportunity to dig into God’s Word and discover some serious Mom skills! Note: Childcare will be provided for single mothers.</p>\n');
INSERT INTO `tbl_entries_data_58` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (16, 75, 'We meet at Athey Creek Christian Fellowship every Thursday to start the day off right – worshipping the Lord! We will spend time in worship, prayer and communion, and the service will last one hour. Feel free to come and go as you wish. If you can’t stay the whole hour, come and join us for as long as you can.', '<p>We meet at Athey Creek Christian Fellowship every Thursday to start the day off right – worshipping the Lord! We will spend time in worship, prayer and communion, and the service will last one hour. Feel free to come and go as you wish. If you can’t stay the whole hour, come and join us for as long as you can.</p>\n');
INSERT INTO `tbl_entries_data_58` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (19, 74, 'Join us in the sanctuary as Pastor Brett teaches verse-by-verse through Revelation. Studying through this powerful book is a great way to wrap up your week! Be checking the back table and here for updated info.', '<p>Join us in the sanctuary as Pastor Brett teaches verse-by-verse through Revelation. Studying through this powerful book is a great way to wrap up your week! Be checking the back table and here for updated info.</p>\n');

-- *** STRUCTURE: `tbl_entries_data_59` ***
DROP TABLE IF EXISTS `tbl_entries_data_59`;
CREATE TABLE `tbl_entries_data_59` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_59` ***
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 70, '503-799-7780', '503-799-7780');

-- *** STRUCTURE: `tbl_entries_data_6` ***
DROP TABLE IF EXISTS `tbl_entries_data_6`;
CREATE TABLE `tbl_entries_data_6` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `role_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`,`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_6` ***
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `role_id`) VALUES (3, 1, 3);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `role_id`) VALUES (4, 3, 2);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `role_id`) VALUES (5, 69, 2);

-- *** STRUCTURE: `tbl_entries_data_60` ***
DROP TABLE IF EXISTS `tbl_entries_data_60`;
CREATE TABLE `tbl_entries_data_60` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_60` ***
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 70, 'judith-slaughter', 'Judith Slaughter');

-- *** STRUCTURE: `tbl_entries_data_61` ***
DROP TABLE IF EXISTS `tbl_entries_data_61`;
CREATE TABLE `tbl_entries_data_61` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_61` ***

-- *** STRUCTURE: `tbl_entries_data_62` ***
DROP TABLE IF EXISTS `tbl_entries_data_62`;
CREATE TABLE `tbl_entries_data_62` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_62` ***

-- *** STRUCTURE: `tbl_entries_data_63` ***
DROP TABLE IF EXISTS `tbl_entries_data_63`;
CREATE TABLE `tbl_entries_data_63` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_63` ***
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 71, 'accf-sanctuary', 'ACCF sanctuary');
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (18, 74, 'accf-sanctuary', 'ACCF sanctuary');
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 75, 'accf-sanctuary', 'ACCF sanctuary');

-- *** STRUCTURE: `tbl_entries_data_64` ***
DROP TABLE IF EXISTS `tbl_entries_data_64`;
CREATE TABLE `tbl_entries_data_64` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_64` ***
INSERT INTO `tbl_entries_data_64` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 71, 'judith-slaughter', 'Judith Slaughter');
INSERT INTO `tbl_entries_data_64` (`id`, `entry_id`, `handle`, `value`) VALUES (18, 74, NULL, NULL);
INSERT INTO `tbl_entries_data_64` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 75, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_65` ***
DROP TABLE IF EXISTS `tbl_entries_data_65`;
CREATE TABLE `tbl_entries_data_65` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_65` ***
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`) VALUES (17, 71, 'no');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`) VALUES (18, 74, 'no');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`) VALUES (15, 75, 'no');

-- *** STRUCTURE: `tbl_entries_data_67` ***
DROP TABLE IF EXISTS `tbl_entries_data_67`;
CREATE TABLE `tbl_entries_data_67` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_67` ***
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 71, 'tuesday', 'Tuesday');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (16, 74, 'friday', 'Friday');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 75, 'thursday', 'Thursday');

-- *** STRUCTURE: `tbl_entries_data_68` ***
DROP TABLE IF EXISTS `tbl_entries_data_68`;
CREATE TABLE `tbl_entries_data_68` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_68` ***
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 74, 'israel', 'Israel');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 75, NULL, NULL);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (16, 74, 'events', 'Events');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 71, 'events', 'Events');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 71, 'womens', 'Women\'s');

-- *** STRUCTURE: `tbl_entries_data_69` ***
DROP TABLE IF EXISTS `tbl_entries_data_69`;
CREATE TABLE `tbl_entries_data_69` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_69` ***
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 76, 'accfmexicomissiontrip', 'accfmexicomissiontrip');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 105, 'atheyinisrael', 'atheyinisrael');

-- *** STRUCTURE: `tbl_entries_data_7` ***
DROP TABLE IF EXISTS `tbl_entries_data_7`;
CREATE TABLE `tbl_entries_data_7` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_7` ***

-- *** STRUCTURE: `tbl_entries_data_70` ***
DROP TABLE IF EXISTS `tbl_entries_data_70`;
CREATE TABLE `tbl_entries_data_70` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_70` ***
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 76, 'mexico', 'Mexico');
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 76, 'home', 'Home');
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 105, 'israel', 'Israel');

-- *** STRUCTURE: `tbl_entries_data_71` ***
DROP TABLE IF EXISTS `tbl_entries_data_71`;
CREATE TABLE `tbl_entries_data_71` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_71` ***
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 81, 'To help us keep the worship service orderly and free of disruptions, please turn off cell phones. If it becomes necessary to leave your seat in the middle of the service, please return to a seat near the back. In addition, we encourage you to utilize the provided childcare for babies and young children. All of this is in place to ensure that people are able to be spiritually fed without distraction. If you need assistance in any way, please see one of our deacons standing in the back.', '<p>To help us keep the worship service orderly and free of disruptions, please turn off cell phones. If it becomes necessary to leave your seat in the middle of the service, please return to a seat near the back. In addition, we encourage you to utilize the provided childcare for babies and young children. All of this is in place to ensure that people are able to be spiritually fed without distraction. If you need assistance in any way, please see one of our deacons standing in the back.</p>\n');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 100, 'If you have any questions, please call our church office at (971) 327-2120', '<p>If you have any questions, please call our church office at (971) 327-2120</p>\n');

-- *** STRUCTURE: `tbl_entries_data_72` ***
DROP TABLE IF EXISTS `tbl_entries_data_72`;
CREATE TABLE `tbl_entries_data_72` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_72` ***
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 81, 'saturday-night', 'Saturday night');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 81, 'sunday-morning', 'Sunday morning');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 100, 'online-giving', 'Online giving');

-- *** STRUCTURE: `tbl_entries_data_73` ***
DROP TABLE IF EXISTS `tbl_entries_data_73`;
CREATE TABLE `tbl_entries_data_73` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_73` ***
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 90, 'bulletin-board', 'Bulletin board');
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (35, 91, 'athey-community', 'Athey community');
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 27, 'women-s-ministry', 'Women’s ministry');
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (41, 28, 'college-and-career-ministry', 'College and Career ministry');
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (42, 31, 'childrens-ministry', 'Children\'s ministry');
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (43, 30, 'junior-high-ministry', 'Junior High ministry');
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 29, 'high-school-ministry', 'High School ministry');
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 84, 'sunday-night-celebration', 'Sunday night celebration');
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 85, 'wednesday-night-through-the-bible-study', 'Wednesday night through-the-Bible study');
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 77, 'villahermosa-mexico', 'Villahermosa, Mexico');
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (23, 54, 'natanara-christian-fellowship', 'Natanara Christian Fellowship');
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (31, 56, 'fanafo-christian-fellowship', 'Fanafo Christian Fellowship');
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (29, 46, 'the-islands-of-vanuatu', 'The Islands of Vanuatu');
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (16, 50, 'ouagadougou-burkina-faso', 'Ouagadougou, Burkina Faso');
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 49, 'lima-peru', 'Lima, Peru');
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (18, 47, 'kampala-uganda', 'Kampala, Uganda');
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (19, 48, 'holsbybrunn-sweden', 'Holsbybrunn, Sweden');
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (40, 98, 'online-giving', 'Online giving');
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (38, 102, 'contact-us', 'Contact us');
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 114, 'about-athey', 'About Athey');
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (36, 22, 'welcome', 'Welcome');

-- *** STRUCTURE: `tbl_entries_data_74` ***
DROP TABLE IF EXISTS `tbl_entries_data_74`;
CREATE TABLE `tbl_entries_data_74` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_74` ***
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 110, 17814530, 17.814530);

-- *** STRUCTURE: `tbl_entries_data_75` ***
DROP TABLE IF EXISTS `tbl_entries_data_75`;
CREATE TABLE `tbl_entries_data_75` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_75` ***
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 110, 92923445, -92.923445);

-- *** STRUCTURE: `tbl_entries_data_76` ***
DROP TABLE IF EXISTS `tbl_entries_data_76`;
CREATE TABLE `tbl_entries_data_76` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_76` ***
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 110, 'mexico', 'Mexico');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 68, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_77` ***
DROP TABLE IF EXISTS `tbl_entries_data_77`;
CREATE TABLE `tbl_entries_data_77` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_77` ***
INSERT INTO `tbl_entries_data_77` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 113, 'home', 'Home');

-- *** STRUCTURE: `tbl_entries_data_8` ***
DROP TABLE IF EXISTS `tbl_entries_data_8`;
CREATE TABLE `tbl_entries_data_8` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_8` ***
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 1, 'kirk-strobeckcom', 'kirk@strobeck.com');
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 3, 'kirk-strobeckcom', 'kirk@strobeck.com');

-- *** DATA: `tbl_entries` ***
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (4, 5, 1, '2011-02-19 10:48:52', '2011-02-19 18:48:52');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (12, 4, 1, '2011-02-19 11:18:55', '2011-02-19 19:18:55');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (11, 4, 1, '2011-02-19 11:18:40', '2011-02-19 19:18:40');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (10, 4, 1, '2011-02-19 11:14:28', '2011-02-19 19:14:28');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (9, 4, 1, '2011-02-19 11:01:33', '2011-02-19 19:01:33');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (13, 4, 1, '2011-02-19 11:19:19', '2011-02-19 19:19:19');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (14, 4, 1, '2011-02-19 11:19:34', '2011-02-19 19:19:34');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (15, 4, 1, '2011-02-19 11:19:48', '2011-02-19 19:19:48');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (16, 4, 1, '2011-02-19 11:19:59', '2011-02-19 19:19:59');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (17, 4, 1, '2011-02-19 11:20:08', '2011-02-19 19:20:08');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (18, 4, 1, '2011-02-19 11:20:23', '2011-02-19 19:20:23');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (19, 3, 1, '2011-02-19 13:15:38', '2011-02-19 21:15:38');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (20, 4, 1, '2011-02-19 13:17:02', '2011-02-19 21:17:02');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (21, 6, 1, '2011-02-19 16:01:45', '2011-02-20 00:01:45');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (22, 3, 1, '2011-02-19 16:03:12', '2011-02-20 00:03:12');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (26, 7, 1, '2011-02-20 04:13:36', '2011-02-20 12:13:36');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (27, 3, 1, '2011-02-22 12:33:05', '2011-02-22 20:33:05');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (28, 3, 1, '2011-02-22 12:33:15', '2011-02-22 20:33:15');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (29, 3, 1, '2011-02-22 12:33:23', '2011-02-22 20:33:23');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (30, 3, 1, '2011-02-22 12:33:35', '2011-02-22 20:33:35');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (31, 3, 1, '2011-02-22 12:33:47', '2011-02-22 20:33:47');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (32, 3, 1, '2011-02-22 12:33:57', '2011-02-22 20:33:57');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (33, 3, 1, '2011-02-22 12:34:07', '2011-02-22 20:34:07');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (34, 6, 1, '2011-02-22 12:34:30', '2011-02-22 20:34:30');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (35, 6, 1, '2011-02-22 12:35:12', '2011-02-22 20:35:12');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (36, 6, 1, '2011-02-22 12:35:41', '2011-02-22 20:35:41');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (37, 6, 1, '2011-02-22 12:36:12', '2011-02-22 20:36:12');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (38, 6, 1, '2011-02-22 12:36:39', '2011-02-22 20:36:39');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (39, 6, 1, '2011-02-22 12:37:03', '2011-02-22 20:37:03');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (40, 6, 1, '2011-02-22 12:37:35', '2011-02-22 20:37:35');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (41, 7, 1, '2011-02-22 12:37:54', '2011-02-22 20:37:54');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (42, 8, 1, '2011-02-22 12:41:13', '2011-02-22 20:41:13');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (44, 3, 1, '2011-02-22 13:13:29', '2011-02-22 21:13:29');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (45, 6, 1, '2011-02-22 13:15:57', '2011-02-22 21:15:57');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (46, 3, 1, '2011-02-22 13:16:37', '2011-02-22 21:16:37');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (47, 3, 1, '2011-02-22 13:16:56', '2011-02-22 21:16:56');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (48, 3, 1, '2011-02-22 13:17:10', '2011-02-22 21:17:10');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (49, 3, 1, '2011-02-22 13:17:24', '2011-02-22 21:17:24');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (50, 3, 1, '2011-02-22 13:17:36', '2011-02-22 21:17:36');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (51, 3, 1, '2011-02-22 13:17:48', '2011-02-22 21:17:48');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (52, 9, 1, '2011-02-22 13:21:50', '2011-02-22 21:21:50');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (53, 6, 1, '2011-02-22 13:22:15', '2011-02-22 21:22:15');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (54, 3, 1, '2011-02-22 13:22:52', '2011-02-22 21:22:52');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (55, 6, 1, '2011-02-22 13:23:14', '2011-02-22 21:23:14');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (56, 3, 1, '2011-02-22 13:23:54', '2011-02-22 21:23:54');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (57, 6, 1, '2011-02-22 13:24:22', '2011-02-22 21:24:22');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (58, 9, 1, '2011-02-22 13:25:37', '2011-02-22 21:25:37');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (59, 9, 1, '2011-02-22 13:26:04', '2011-02-22 21:26:04');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (60, 9, 1, '2011-02-22 13:26:27', '2011-02-22 21:26:27');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (61, 9, 1, '2011-02-22 13:26:58', '2011-02-22 21:26:58');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (62, 9, 1, '2011-02-22 13:27:22', '2011-02-22 21:27:22');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (63, 9, 1, '2011-02-22 13:27:53', '2011-02-22 21:27:53');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (64, 3, 1, '2011-02-22 13:30:24', '2011-02-22 21:30:24');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (70, 12, 1, '2011-02-22 13:52:38', '2011-02-22 21:52:38');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (68, 10, 1, '2011-02-22 13:48:21', '2011-02-22 21:48:21');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (71, 11, 1, '2011-02-22 13:55:56', '2011-02-22 21:55:56');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (72, 3, 1, '2011-02-22 14:07:01', '2011-02-22 22:07:01');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (73, 3, 1, '2011-02-22 14:07:17', '2011-02-22 22:07:17');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (74, 11, 1, '2011-02-22 14:12:27', '2011-02-22 22:12:27');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (75, 11, 1, '2011-02-22 14:13:45', '2011-02-22 22:13:45');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (76, 13, 1, '2011-03-06 08:28:56', '2011-03-06 16:28:56');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (77, 3, 1, '2011-03-06 08:29:30', '2011-03-06 16:29:30');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (86, 7, 1, '2011-03-06 15:43:01', '2011-03-06 23:43:01');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (79, 6, 1, '2011-03-06 15:23:23', '2011-03-06 23:23:23');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (80, 7, 1, '2011-03-06 15:23:55', '2011-03-06 23:23:55');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (81, 14, 1, '2011-03-06 15:28:18', '2011-03-06 23:28:18');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (82, 3, 1, '2011-03-06 15:37:37', '2011-03-06 23:37:37');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (83, 3, 1, '2011-03-06 15:37:55', '2011-03-06 23:37:55');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (84, 3, 1, '2011-03-06 15:38:29', '2011-03-06 23:38:29');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (85, 3, 1, '2011-03-06 15:38:59', '2011-03-06 23:38:59');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (87, 6, 1, '2011-03-06 15:43:43', '2011-03-06 23:43:43');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (88, 7, 1, '2011-03-06 15:47:28', '2011-03-06 23:47:28');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (89, 6, 1, '2011-03-06 15:48:33', '2011-03-06 23:48:33');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (90, 3, 1, '2011-03-06 16:02:20', '2011-03-07 00:02:20');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (91, 3, 1, '2011-03-06 16:02:40', '2011-03-07 00:02:40');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (92, 6, 1, '2011-03-06 16:20:43', '2011-03-07 00:20:43');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (93, 6, 1, '2011-03-06 16:21:26', '2011-03-07 00:21:26');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (94, 6, 1, '2011-03-06 16:22:28', '2011-03-07 00:22:28');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (95, 6, 1, '2011-03-06 16:23:52', '2011-03-07 00:23:52');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (96, 6, 1, '2011-03-06 16:24:41', '2011-03-07 00:24:41');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (97, 6, 1, '2011-03-06 16:25:21', '2011-03-07 00:25:21');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (98, 3, 1, '2011-03-06 16:27:41', '2011-03-07 00:27:41');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (99, 7, 1, '2011-03-06 16:27:59', '2011-03-07 00:27:59');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (100, 14, 1, '2011-03-06 16:28:18', '2011-03-07 00:28:18');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (101, 6, 1, '2011-03-06 16:29:28', '2011-03-07 00:29:28');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (102, 3, 1, '2011-03-06 16:31:40', '2011-03-07 00:31:40');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (103, 7, 1, '2011-03-06 16:31:57', '2011-03-07 00:31:57');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (104, 6, 1, '2011-03-06 16:33:44', '2011-03-07 00:33:44');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (105, 13, 1, '2011-03-06 16:35:43', '2011-03-07 00:35:43');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (106, 6, 1, '2011-03-07 07:47:20', '2011-03-07 15:47:20');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (107, 7, 1, '2011-03-07 07:47:41', '2011-03-07 15:47:41');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (108, 6, 1, '2011-03-07 07:49:02', '2011-03-07 15:49:02');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (109, 7, 1, '2011-03-07 07:49:21', '2011-03-07 15:49:21');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (110, 10, 1, '2011-03-07 09:24:48', '2011-03-07 17:24:48');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (113, 15, 1, '2011-03-25 16:51:43', '2011-03-25 23:51:43');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (114, 3, 1, '2011-04-28 15:57:23', '2011-04-28 22:57:23');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (115, 3, 1, '2011-04-28 15:57:41', '2011-04-28 22:57:41');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (116, 3, 1, '2011-04-28 15:57:57', '2011-04-28 22:57:57');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (117, 3, 1, '2011-05-03 10:54:59', '2011-05-03 17:54:59');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (118, 3, 1, '2011-05-03 10:55:10', '2011-05-03 17:55:10');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (119, 3, 1, '2011-05-03 10:55:18', '2011-05-03 17:55:18');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (120, 3, 1, '2011-05-03 10:55:32', '2011-05-03 17:55:32');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (121, 3, 1, '2011-05-03 10:55:42', '2011-05-03 17:55:42');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (122, 3, 1, '2011-05-03 10:55:51', '2011-05-03 17:55:51');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (123, 3, 1, '2011-05-03 10:59:16', '2011-05-03 17:59:16');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (124, 3, 1, '2011-05-03 11:00:44', '2011-05-03 18:00:44');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (126, 7, 1, '2011-05-03 11:10:08', '2011-05-03 18:10:08');

-- *** DATA: `tbl_extensions` ***
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (1, 'asdc', 'enabled', 1.3);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (2, 'debugdevkit', 'enabled', 1.1);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (37, 'members', 'enabled', '1.0 Beta 3');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (5, 'profiledevkit', 'enabled', '1.0.4');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (9, 'smtp_email_library', 'enabled', 1.1);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (25, 'tweak_ui', 'enabled', '0.1.2');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (11, 'systemidfield', 'enabled', '1.0.2');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (12, 'reflectionfield', 'enabled', '1.0.9');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (13, 'jit_image_manipulation', 'enabled', 1.10);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (18, 'markdown', 'enabled', 1.13);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (15, 'uniqueuploadfield', 'enabled', 1.2);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (19, 'root_page_params', 'enabled', 1.2);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (24, 'neatify', 'enabled', '1.0.1');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (26, 'order_entries', 'enabled', 1.8);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (29, 'html5_doctype', 'enabled', '1.2.4');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (30, 'xssfilter', 'enabled', 1.0);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (31, 'datetime', 'enabled', '2.0RC1');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (32, 'export_ensemble', 'enabled', 1.13);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (33, 'selectbox_link_field', 'enabled', 1.19);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (34, 'maintenance_mode', 'enabled', 1.4);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (35, 'subsectionmanager', 'enabled', '1.1.1');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (36, 'xmlimporter', 'enabled', '1.0.0');

-- *** DATA: `tbl_extensions_delegates` ***
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (138, 2, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (137, 2, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (160, 37, '/system/preferences/', 'Save', 'savePreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (159, 37, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (168, 5, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (167, 5, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (158, 37, '/backend/', 'AdminPagePreGenerate', 'appendAssets');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (157, 37, '/frontend/', 'EventPostSaveFilter', 'processPostSaveFilter');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (177, 9, '/blueprints/events/edit/', 'AppendEventFilterDocumentation', 'cbAppendEventFilterDocumentation');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (176, 9, '/blueprints/events/new/', 'AppendEventFilterDocumentation', 'cbAppendEventFilterDocumentation');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (175, 9, '/blueprints/events/edit/', 'AppendEventFilter', 'cbAddFilterToEventEditor');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (174, 9, '/blueprints/events/new/', 'AppendEventFilter', 'cbAddFilterToEventEditor');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (173, 9, '/system/preferences/', 'Save', 'cbSavePreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (166, 26, '/backend/', 'AppendElementBelowView', 'appendOrderFieldId');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (142, 12, '/frontend/', 'EventPostSaveFilter', 'compileFrontendFields');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (141, 12, '/publish/edit/', 'EntryPostEdit', 'compileBackendFields');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (140, 12, '/publish/new/', 'EntryPostCreate', 'compileBackendFields');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (156, 37, '/frontend/', 'EventPreSaveFilter', 'checkEventPermissions');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (170, 19, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'append_preferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (169, 19, '/frontend/', 'FrontendPrePageResolve', 'addPage');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (165, 26, '/backend/', 'InitaliseAdminPageHead', 'appendScriptToHead');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (143, 29, '/frontend/', 'FrontendOutputPostGenerate', 'parse_html');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (135, 30, '/blueprints/events/edit/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (134, 30, '/blueprints/events/new/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (139, 32, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (144, 13, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (150, 34, '/blueprints/pages/', 'AppendPageContent', '__appendType');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (149, 34, '/backend/', 'AppendPageAlert', '__appendAlert');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (148, 34, '/system/preferences/', 'CustomActions', '__toggleMaintenanceMode');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (147, 34, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (146, 34, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (155, 37, '/frontend/', 'FrontendProcessEvents', 'appendLoginStatusToEventXML');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (164, 24, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'addCustomPreferenceFieldsets');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (163, 24, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (172, 9, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'cbAppendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (182, 35, '/publish/', 'Delete', '__deleteSortOrder');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (181, 35, '/publish/edit/', 'EntryPostEdit', '__saveSortOrder');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (180, 35, '/publish/new/', 'EntryPostNew', '__saveSortOrder');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (179, 35, '/administration/', 'AdminPagePreGenerate', '__appendAssets');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (185, 36, '/backend/', 'InitaliseAdminPageHead', 'initializeAdmin');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (154, 37, '/frontend/', 'FrontendParamsResolve', 'addMemberDetailsToPageParams');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (153, 37, '/frontend/', 'FrontendPageResolved', 'checkFrontendPagePermissions');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (136, 30, '/frontend/', 'EventPreSaveFilter', 'eventPreSaveFilter');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (145, 13, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (151, 34, '/frontend/', 'FrontendPrePageResolve', '__checkForMaintenanceMode');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (152, 34, '/frontend/', 'FrontendParamsResolve', '__addParam');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (161, 37, '/blueprints/events/new/', 'AppendEventFilter', 'appendFilter');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (162, 37, '/blueprints/events/edit/', 'AppendEventFilter', 'appendFilter');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (171, 19, '/system/preferences/', 'Save', 'save_settings');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (178, 9, '/frontend/', 'EventPostSaveFilter', 'cbSendEmailSMTPFilter');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (183, 35, '/backend/', 'AppendPageAlert', '__upgradeMediathek');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (184, 25, '/backend/', 'InitaliseAdminPageHead', 'addScriptToHead');

-- *** DATA: `tbl_fields` ***
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (34, 'Promote', 'promote', 'checkbox', 5, 'no', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (39, 'Tags', 'tags', 'select', 7, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (17, 'Tag', 'tag', 'input', 3, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (59, 'Phone number', 'phone-number', 'input', 12, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (36, 'Text', 'text', 'textarea', 6, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (46, 'Description', 'description', 'input', 9, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (31, 'Galleries', 'galleries', 'select', 4, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (23, 'Photo', 'photo', 'uniqueupload', 4, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (38, 'Verse', 'verse', 'input', 7, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (26, 'Description', 'description', 'input', 4, 'no', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (28, 'Date added', 'date-added', 'date', 5, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (29, 'Name', 'name', 'input', 5, 'no', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (35, 'Tags', 'tags', 'select', 5, 'no', 3, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (37, 'Tags', 'tags', 'select', 6, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (41, 'Name', 'name', 'input', 8, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (42, 'File', 'file', 'uniqueupload', 8, 'yes', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (43, 'Description', 'description', 'textarea', 8, 'no', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (44, 'Tags', 'tags', 'select', 8, 'no', 3, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (45, 'Parents', 'parents', 'select', 3, 'no', 2, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (47, 'URL', 'url', 'input', 9, 'yes', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (48, 'Tags', 'tags', 'select', 9, 'no', 2, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (49, 'Order', 'order', 'order_entries', 3, 'no', 3, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (50, 'Name', 'name', 'input', 10, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (51, 'Notes', 'notes', 'textarea', 10, 'no', 3, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (52, 'Address', 'address', 'input', 10, 'no', 4, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (53, 'City', 'city', 'input', 10, 'no', 5, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (54, 'State', 'state', 'input', 10, 'no', 6, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (55, 'Zip', 'zip', 'input', 10, 'no', 7, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (56, 'Country', 'country', 'input', 10, 'no', 8, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (57, 'Name', 'name', 'input', 11, 'no', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (58, 'Description', 'description', 'textarea', 11, 'yes', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (60, 'Members', 'members', 'select', 12, 'no', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (61, 'Locations', 'locations', 'select', 12, 'no', 3, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (62, 'Extension', 'extension', 'input', 12, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (63, 'Locations', 'locations', 'select', 11, 'no', 3, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (64, 'Contacts', 'contacts', 'select', 11, 'no', 4, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (65, 'Childcare', 'childcare', 'checkbox', 11, 'no', 5, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (67, 'Weekly', 'weekly', 'select', 11, 'no', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (68, 'Tags', 'tags', 'select', 11, 'no', 6, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (69, 'URL', 'url', 'input', 13, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (70, 'Tags', 'tags', 'select', 13, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (71, 'Text', 'text', 'textarea', 14, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (72, 'Tags', 'tags', 'select', 14, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (73, 'Title', 'title', 'input', 3, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (74, 'Latitude', 'latitude', 'input', 10, 'no', 1, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (75, 'Longitude', 'longitude', 'input', 10, 'no', 2, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (76, 'Tags', 'tags', 'select', 10, 'no', 9, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (77, 'Tags', 'tags', 'select', 15, 'no', 0, 'main', 'no');

-- *** DATA: `tbl_pages` ***
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (1, NULL, 'Home', 'index', NULL, 'tag', 'bible_verse_api,events,galleries,locations,locations_per_id,photos_per_gallery,tags,text,tips,tumblr,tumblr_api_ds,ustream_api,verses', NULL, 0);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (17, NULL, 'Events', 'event', NULL, 'event-id', 'bible_verse_api,event_per_id,locations,locations_per_id,tags,text,tips,ustream_api,verses', NULL, 3);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (9, NULL, 'Forbidden', 'forbidden', NULL, NULL, NULL, NULL, 2);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (16, NULL, 'Tumblr', 'tumblr', NULL, 'tumblr/tumblr-entry', 'tags,tumblr,tumblr_api', NULL, 1);

-- *** DATA: `tbl_pages_types` ***
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (1, 9, 403);
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (33, 1, 'index');

-- *** DATA: `tbl_sections` ***
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (3, 'Tags', 'tags', 0, 49, 'asc', 'no', 'Groups');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (4, 'Photos', 'photos', 3, NULL, 'asc', 'no', 'Content');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (5, 'Galleries', 'galleries', 1, NULL, 'asc', 'no', 'Groups');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (6, 'Text', 'text', 2, NULL, 'asc', 'no', 'Content');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (7, 'Verses', 'verses', 5, NULL, 'asc', 'no', 'Content');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (8, 'Files', 'files', 4, NULL, 'asc', 'no', 'Content');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (9, 'Links', 'links', 6, NULL, 'asc', 'no', 'Content');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (10, 'Locations', 'locations', 7, NULL, 'asc', 'no', 'Content');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (11, 'Events', 'events', 8, NULL, 'asc', 'no', 'Content');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (12, 'Phone numbers', 'phone-numbers', 9, NULL, 'asc', 'no', 'People');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (13, 'Tumblr', 'tumblr', 10, NULL, 'asc', 'no', 'Content');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (14, 'Tips', 'tips', 11, NULL, 'asc', 'no', 'Content');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (15, 'UStream latest', 'ustream-latest', 12, NULL, 'asc', 'no', 'Content');

-- *** DATA: `tbl_sections_association` ***
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (30, 3, 17, 6, 37, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (41, 3, 17, 5, 35, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (40, 5, 29, 4, 31, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (32, 3, 17, 7, 39, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (37, 3, 17, 8, 44, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (76, 3, 17, 3, 45, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (44, 3, 17, 9, 48, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (54, 10, 50, 12, 61, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (77, 10, 50, 11, 63, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (79, 3, 17, 11, 68, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (72, 3, 17, 13, 70, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (74, 3, 17, 14, 72, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (80, 3, 17, 10, 76, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (81, 3, 17, 15, 77, 'no');
