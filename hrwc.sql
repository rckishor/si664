-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 03, 2013 at 06:26 AM
-- Server version: 5.5.25
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `hrwc`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_loginusers`
--

CREATE TABLE `tb_loginusers` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(128) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_ownerinfo`
--

CREATE TABLE `tb_ownerinfo` (
  `site_id` char(5) DEFAULT NULL,
  `owner_lastname` varchar(128) DEFAULT NULL,
  `owner_firstname` varchar(128) DEFAULT NULL,
  `secowner_lastname` varchar(128) DEFAULT NULL,
  `secowner_firstname` varchar(128) DEFAULT NULL,
  `owner_address` varchar(128) DEFAULT NULL,
  `owner_city` varchar(128) DEFAULT NULL,
  `owner_state` varchar(128) DEFAULT NULL,
  `owner_zip` char(5) DEFAULT NULL,
  `owner_email` varchar(128) DEFAULT NULL,
  `owner_phone` varchar(12) DEFAULT NULL,
  `prefer_contact` char(10) DEFAULT NULL,
  `owner_notes` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_quesansmap`
--

CREATE TABLE `tb_quesansmap` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `options_desc` varchar(128) DEFAULT NULL,
  `integrity_score` smallint(6) DEFAULT NULL,
  `disturbance_score` smallint(6) DEFAULT NULL,
  `question_id` char(5) DEFAULT NULL,
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_id` (`option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=213 ;

--
-- Dumping data for table `tb_quesansmap`
--

INSERT INTO `tb_quesansmap` (`option_id`, `options_desc`, `integrity_score`, `disturbance_score`, `question_id`) VALUES
(2, 'Flat', 0, 0, '1'),
(3, 'Gently rolling', 0, 0, '1'),
(4, 'Hilly, Occasionally Steep', 0, 0, '1'),
(5, 'Hilly, Occasionally Steep', 0, 0, '1'),
(6, 'Glacial lake Plain', 0, 0, '1'),
(7, 'Glacial outwash plain', 0, 0, '1'),
(8, 'Glacial till or moraine', 0, 0, '1'),
(9, 'Kettle, kame, or esker', 0, 0, '1'),
(10, 'Large boulders (galcial erratics)', 0, 0, '1'),
(11, 'Other (describe)', 0, 0, '1'),
(12, 'description_other', 0, 0, '1'),
(13, 'Bulldozed clearings', 0, 0, '2'),
(14, 'Construction', 0, 0, '2'),
(15, 'Commercial buildings', 0, 0, '2'),
(16, 'Residential buildings', 0, 0, '2'),
(17, 'Agricultural field (plowed)', 0, 0, '2'),
(18, 'Paved roads', 0, 0, '2'),
(19, 'Railroads', 0, 0, '2'),
(20, 'Dirt Roads (graveled)', 0, 0, '2'),
(21, 'ATV or off -road vehicle trails', 0, 0, '2'),
(22, 'Dirt roads (unimproved, two tracks)', 0, 0, '2'),
(23, 'Agricultural field(grazed)', 0, 0, '2'),
(24, 'Abandoned agricultural field', 0, 0, '2'),
(25, 'Abandoned tree farm, orchard', 0, 0, '2'),
(26, 'Fences', 0, 0, '2'),
(27, 'Abandoned homestead', 0, 0, '2'),
(28, 'Rock piled', 0, 0, '2'),
(29, 'Logging of tree removal', 0, 0, '2'),
(30, 'Dumping, trash piles', 0, 0, '2'),
(31, 'Footpaths', 0, 0, '2'),
(32, 'Other (describe)', 0, 0, '2'),
(33, 'Extensive (>50% of site)', 0, 0, '3'),
(34, 'Partial (25-50% of site)', 0, 0, '3'),
(35, 'Moderate (10-25% of site)', 0, 0, '3'),
(36, 'Mild (<10% of site)', 0, 0, '3'),
(37, 'Uncertain', 0, 0, '3'),
(38, 'None apparent', 0, 0, '3'),
(39, 'Gravel or debris pile', 0, 0, '4'),
(40, 'Erosion (gullies, washouts)', 0, 0, '4'),
(41, 'Bare areas with no vegetation', 0, 0, '4'),
(42, 'Compaction or ruts', 0, 0, '4'),
(43, 'Other (describe)', 0, 0, '4'),
(44, 'Primarily at roadsides and trial edges (exterior)', 0, 0, '5'),
(45, 'Pervasive througout site (interior vs exterior)', 0, 0, '5'),
(46, 'Isolated pockets within a single community', 0, 0, '5'),
(47, 'Large monotypic stands in one community', 0, 0, '5'),
(48, 'Large monotypic stands in two or more communities', 0, 0, '5'),
(49, 'Other (describe)', 0, 0, '5'),
(50, 'Antler rubs', 0, 0, '6'),
(51, 'Bird nests', 0, 0, '6'),
(52, 'Carcasses or bones', 0, 0, '6'),
(53, 'Deer', 0, 0, '6'),
(54, 'Deer tracks, deer browse', 0, 0, '6'),
(55, 'Droppings or scat', 0, 0, '6'),
(56, 'Fish other aquatic vertebrates', 0, 0, '6'),
(57, 'Frogs, toads', 0, 0, '6'),
(58, 'Ground -nesting birds (grouse, turkeys, etc.)', 0, 0, '6'),
(59, 'Migratory waterfowl', 0, 0, '6'),
(60, 'Raptors, raptor nests', 0, 0, '6'),
(61, 'Small mammals (squirrels, mice, rabbits,raccoons, etc.)', 0, 0, '6'),
(62, 'Small mammal burrows, tracks', 0, 0, '6'),
(63, 'Songbirds', 0, 0, '6'),
(64, 'Salamanders', 0, 0, '6'),
(65, 'Turtles', 0, 0, '6'),
(66, 'Other (describe)', 0, 0, '6'),
(67, 'Addtional Notes', 0, 0, '7'),
(68, 'At margin of river, stream, lake, or pond', 0, 0, '8'),
(69, 'Kellte Lake or pond', 0, 0, '8'),
(70, 'Standing river', 0, 0, '8'),
(71, 'In ravine or deppression', 0, 0, '8'),
(72, 'Appears occassionally flooded (vernal pond, floodpplain forests)', 0, 0, '8'),
(73, 'At base of hill or slope', 0, 0, '8'),
(74, 'Groundwater seepage area', 0, 0, '8'),
(75, 'Source of water  not apparent', 0, 0, '8'),
(76, 'Bare muddy ground', 0, 0, '8'),
(77, 'Tree trunks buttressed/stained', 0, 0, '8'),
(78, 'Tree roots bare or spreading', 0, 0, '8'),
(79, 'Other (describe):', 0, 0, '8'),
(80, 'Sandy', 0, 0, '9'),
(81, 'Heavy, slippery, loam-clay', 0, 0, '9'),
(82, 'Mixed with peebly or gravel', 0, 0, '9'),
(83, 'Glacial erratics', 0, 0, '9'),
(84, 'Light tan or brown', 0, 0, '9'),
(85, 'Dark brown', 0, 0, '9'),
(86, 'Mucky', 0, 0, '9'),
(87, 'Peaty', 0, 0, '9'),
(88, 'Top 6"-12" layered or banded', 0, 0, '9'),
(89, 'Top 6"-12" appear uniform', 0, 0, '9'),
(90, 'Other (describe)', 0, 0, '9'),
(91, 'Vegetation clumped in distinct areas or patches', 0, 0, '10'),
(92, 'Vegtation has no distinct zones', 0, 0, '10'),
(93, 'Open-water area', 0, 0, '10'),
(94, 'Emergent marsh area', 0, 0, '10'),
(95, 'Wet meadow or marsh area', 0, 0, '10'),
(96, 'Forb area', 0, 0, '10'),
(97, 'Fen area', 0, 0, '10'),
(98, 'Bog area', 0, 0, '10'),
(99, 'Dense tall shrub area', 0, 0, '10'),
(100, 'Forest', 0, 0, '10'),
(101, 'Other (describe):', 0, 0, '10'),
(102, 'Buttonbush', 0, 0, '11'),
(103, 'Pickerelweed', 0, 0, '11'),
(104, 'Water-willow', 0, 0, '11'),
(105, 'Bluejoint gass', 0, 0, '12'),
(106, 'Bulrushes', 0, 0, '12'),
(107, 'Cottongrass', 0, 0, '12'),
(108, 'Tussock sedge', 0, 0, '12'),
(109, 'Seges, uncertain or other', 0, 0, '12'),
(110, 'Uncertain', 0, 0, '12'),
(111, 'Ferns(cinnamon or royal)', 0, 0, '13'),
(112, 'Gentians', 0, 0, '13'),
(113, 'Joe-pye weed', 0, 0, '13'),
(114, 'Lobelias (except Indian tobacco)', 0, 0, '13'),
(115, 'Marsh marigold', 0, 0, '13'),
(116, 'Orchids', 0, 0, '13'),
(117, 'Skullcaps', 0, 0, '13'),
(118, 'Skunk cabbage', 0, 0, '13'),
(119, 'Blueberries', 0, 0, '14'),
(120, 'Buttonbush', 0, 0, '14'),
(121, 'Cinquefoil, shrubby', 0, 0, '14'),
(122, 'Dogwoods, shrubby (gray, red-osier, silky)', 0, 0, '14'),
(123, 'Leatherleaf', 0, 0, '14'),
(124, 'Michigan holly', 0, 0, '14'),
(125, 'Ninbark', 0, 0, '14'),
(126, 'Poison sumac', 0, 0, '14'),
(127, 'Willows (shrubby)', 0, 0, '14'),
(128, 'Ashes', 0, 0, '15'),
(129, 'Birch(yellow)', 0, 0, '15'),
(130, 'Cedar, northern white', 0, 0, '15'),
(131, 'Larch (tamarack)', 0, 0, '15'),
(132, 'Maples (Circle: red, silver, other)', 0, 0, '15'),
(133, 'Oaks ', 0, 0, '15'),
(134, 'Spruce, black', 0, 0, '15'),
(135, 'Sycamore', 0, 0, '15'),
(136, 'Cottongrass', 0, 0, '16'),
(137, 'Leatherleaf', 0, 0, '16'),
(138, 'Pitcher plants', 0, 0, '16'),
(139, 'Sphagnum moss', 0, 0, '16'),
(140, 'Sundews', 0, 0, '16'),
(141, 'Black alder', 0, 0, '17'),
(142, 'Buckthorns (Circle: glossy; common)', 0, 0, '17'),
(143, 'Cat-tails (dense, extensive)', 0, 0, '17'),
(144, 'Phragmites (common reed)', 0, 0, '17'),
(145, 'Purple loosestrife', 0, 0, '17'),
(146, 'Reed canary-grass', 0, 0, '17'),
(147, 'Total Species ', 0, 0, '18'),
(148, 'None (0%)', 0, 0, '19'),
(149, 'A little (1-10%)', 0, 0, '19'),
(150, 'Common (10-25%)', 0, 0, '19'),
(151, 'Abundant (25-50%)', 0, 0, '19'),
(152, 'Dominant (>50%)', 0, 0, '19'),
(153, 'None (0%)', 0, 0, '19'),
(154, 'A little (1-10%)', 0, 0, '19'),
(155, 'Common (10-25%)', 0, 0, '19'),
(156, 'Abundant (25-50%)', 0, 0, '19'),
(157, 'Dominant (>50%)', 0, 0, '19'),
(158, 'None (0%)', 0, 0, '19'),
(159, 'A little (1-10%)', 0, 0, '19'),
(160, 'Common (10-25%)', 0, 0, '19'),
(161, 'Abundant (25-50%)', 0, 0, '19'),
(162, 'Dominant (>50%)', 0, 0, '19'),
(163, 'None (0%)', 0, 0, '19'),
(164, 'A little (1-10%)', 0, 0, '19'),
(165, 'Common (10-25%)', 0, 0, '19'),
(166, 'Abundant (25-50%)', 0, 0, '19'),
(167, 'Dominant (>50%)', 0, 0, '19'),
(168, 'None (0%)', 0, 0, '19'),
(169, 'A little (1-10%)', 0, 0, '19'),
(170, 'Common (10-25%)', 0, 0, '19'),
(171, 'Abundant (25-50%)', 0, 0, '19'),
(172, 'Dominant (>50%)', 0, 0, '19'),
(173, 'None (0%)', 0, 0, '19'),
(174, 'A little (1-10%)', 0, 0, '19'),
(175, 'Common (10-25%)', 0, 0, '19'),
(176, 'Abundant (25-50%)', 0, 0, '19'),
(177, 'Dominant (>50%)', 0, 0, '19'),
(178, 'None (0%)', 0, 0, '19'),
(179, 'A little (1-10%)', 0, 0, '19'),
(180, 'Common (10-25%)', 0, 0, '19'),
(181, 'Abundant (25-50%)', 0, 0, '19'),
(182, 'Dominant (>50%)', 0, 0, '19'),
(183, 'Primarily along trails and wetland edges (exterior)', 0, 0, '20'),
(184, 'Within wetland interior', 0, 0, '20'),
(185, 'Occur in isolated pockets', 0, 0, '20'),
(186, 'Occur in large monotypic stands', 0, 0, '20'),
(187, 'Pervasive throughout wetland (interior and exterior)', 0, 0, '20'),
(188, 'Other (describe)', 0, 0, '20'),
(189, 'Bulldozed clearings', 0, 0, '21'),
(190, 'Ditches, channels, or tiling ', 0, 0, '21'),
(191, 'Drainpipes', 0, 0, '21'),
(192, 'Berms, dams to divert H2O', 0, 0, '21'),
(193, 'Erosion (gullies, washouts)', 0, 0, '21'),
(194, 'Erosion control fencing', 0, 0, '21'),
(195, 'Gravel or rubble or piles', 0, 0, '21'),
(196, 'Dirt roads (graveled or unimproved two tracks)', 0, 0, '21'),
(197, 'ATV or off-road vehicle trails', 0, 0, '21'),
(198, 'Fences', 0, 0, '21'),
(199, 'Agricultural use (describe):', 0, 0, '21'),
(200, 'Rock piles', 0, 0, '21'),
(201, 'Evidence or plowing', 0, 0, '21'),
(202, 'Wheel ruts, compacted areas', 0, 0, '21'),
(203, 'Trampled or rutted areas', 0, 0, '21'),
(204, 'Footpaths', 0, 0, '21'),
(205, 'Other (describe):', 0, 0, '21'),
(206, 'Extensive (>50% of area)', 0, 0, '22'),
(207, 'Partial (25-50% of area)', 0, 0, '22'),
(208, 'Moderate (10-25% of area)', 0, 0, '22'),
(209, 'Mild (<10% of area)', 0, 0, '22'),
(210, 'Uncertain', 0, 0, '22'),
(211, 'None apparent', 0, 0, '22'),
(212, 'Notes', 0, 0, '23');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siteanswers`
--

CREATE TABLE `tb_siteanswers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` char(5) DEFAULT NULL,
  `siteworksheet_id` char(8) DEFAULT NULL,
  `options_id` char(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_siteinfo`
--

CREATE TABLE `tb_siteinfo` (
  `site_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_name` varchar(128) DEFAULT NULL,
  `parcel_no` varchar(18) DEFAULT NULL,
  `acreage` smallint(6) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `state` varchar(128) DEFAULT NULL,
  `zip` char(6) DEFAULT NULL,
  `protection_status` varchar(128) DEFAULT NULL,
  `follow_up` varchar(128) DEFAULT NULL,
  `permission` tinyint(4) DEFAULT NULL,
  `preserve_interest` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_siteworksheets`
--

CREATE TABLE `tb_siteworksheets` (
  `siteworksheet_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` char(5) DEFAULT NULL,
  `worksheettype_id` char(2) DEFAULT NULL,
  `score` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`siteworksheet_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_worksheetquesmap`
--

CREATE TABLE `tb_worksheetquesmap` (
  `question_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question_desc` text,
  `worksheettype_id` char(1) DEFAULT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `tb_worksheetquesmap`
--

INSERT INTO `tb_worksheetquesmap` (`question_id`, `question_desc`, `worksheettype_id`) VALUES
(1, 'Characterize the landscape and landforms in the site (Check all that apply)', '1'),
(2, 'Characterize human-caused disturbances that you observe on the site as a whole(listed in order of potential severity/intensity). Check all that apply. Circle all that appear recent, on-going, or severe. ', '1'),
(3, 'Characterize the extent of the human disturbance(s): ', '1'),
(4, 'Effect of previous or current land uses on soil (listed by severity). Check all that apply. ', '1'),
(5, 'Invasive species overall. After traversing the site, characterize that overall pattern(s) of species invasions. Check all that apply. ', '1'),
(6, 'Wildlife Habitat: Small natural areas may provide important wildlife habitat in an increasingly urbanized environment. Check off any of the following wildlife signs or sightings for the entire site. ', '1'),
(7, 'Additional Notes on wildlife (including stories or other anecdotal evidence from land-owner)', '1'),
(8, 'Hydrological Conditions: Wetlands are areas that have standing water periodically, for at least some part of the year, where plants with particular adaptations typically grow, and organic (muck or peat) soils may develop. Characterize the area where thus wetland occurs. Check all that apply. ', '2'),
(9, 'Appearance of soil. If there is bare soil in the area from a tree tip-up, animal digging, or human activities, characterize the soil. Check all that apply. ', '2'),
(10, 'Vegetation Structure. Observe the features and patterns of the vegetation. ', '2'),
(11, 'Native Emergent and floating - leaved plants', '2'),
(12, 'Native grasses and grass-like plants (sedges, rushes)', '2'),
(13, 'Native forbs', '2'),
(14, 'Native Shrubs', '2'),
(15, 'Native trees', '2'),
(16, 'Native plants of bogs and fens', '2'),
(17, 'Invasive species (grass-like plants, forbs, shrubs, trees)', '2'),
(18, 'Estimate the total number of species of all types (even if you can''t identify them)', '2'),
(19, 'Vegetation cover. Estimate the area covered by each by each type of plants.(Vegetation types may overlap, so total cover can be greater than 100%)', '2'),
(20, 'Invasive Species distribution within wetland area. Check all that apply. ', '2'),
(21, 'Human Disturbances to wetland area. If possible, walk around the perimeter of the wetland of the wetland to look for possible draining or ditching. Check all that apply, and Circle all that appear on-going or severe.', '2'),
(22, 'Characterize the extent of the disturbance(s) to this wetland area: ', '2'),
(23, 'Additional Notes', '2'),
(24, 'Appearance of Soil. If there is bare soil in the area from a tree tip-up, animal digging, or human activities, characterize the soil. Check all that apply. ', '3'),
(25, 'Vegetation Structure: Tree and Shrub Canopy. ', '3'),
(26, 'Vegetation Structure: Tree Size Distribution. Estimate the area covered by each of following size classes of trees. ', '3'),
(27, 'Native Grasses ', '3'),
(28, 'Non-Native Agrasses (green early & late in season)', '3'),
(29, 'Native forbs', '3'),
(30, 'Invasive forbs (native and non-native old-field weeds)', '3'),
(31, 'Native Shrubs (typically grow in clumps of woody stems)', '3'),
(32, 'Native trees. Check off all sizes in which you observe each species. ', '3'),
(33, 'Non-native shrubs and trees', '3'),
(34, 'Estimate the total number of species of all types (even if you can''t identify them)', '3'),
(35, 'Vegetation Cover. Estimate the area covered by each type of plants. (Types may overlap so total may be > 100%)', '3'),
(36, 'Invasive species distribution within grassland/shrubland area', '3'),
(37, 'Evidence of plowing(arranged by increasing likelihood of plowing). Check all that apply. ', '3'),
(38, 'Human Disturbances in grassland/shrubland area. ', '3'),
(39, 'Characterize the extent and effects of human disturbance(s) in grassland and/shrubland area. ', '3'),
(40, 'Additional Notes', '3'),
(41, 'General forest structure and appearance. Check all that apply.', '4'),
(42, 'Appearance of Soil. If there is bare soil in the area from a tree tip-up, animal digging, or human activities, characterize the soil. Check all that apply. ', '4'),
(43, 'Vegetation Structure.Tree Sizes. Estimate and circle the overall canopy area covered by each size class of trees. ', '4'),
(44, 'Vegetation Types: Tree Species. Check off all sizes in which each species appears. ', '4'),
(45, 'Native shrubs and woody vines', '4'),
(46, 'Native herbaceous ground cover and spring flora', '4'),
(47, 'Invasive Species (small trees, shrubs, woody vines and ground cover)', '4'),
(48, 'Estimate the total number of species of all types (even if you can''t identify them)', '4'),
(49, 'Vegetation Cover. Estimate the area covered by each type of plants. (Vegetation types may overlap, so total cover can be greater than 100%)', '4'),
(50, 'Invasive species distribution within forested area', '4'),
(51, 'Human disturbances in this forested area. Check all that apply. ', '4'),
(52, 'Characterize the extent of human disturbance(s)in this forested area ', '4'),
(53, 'Additional notes', '4'),
(54, 'Width of the Creek. Check the average width of waterway as it flows through the site', '5'),
(55, 'Stream Structure and stream banks. Characterize the appearance of any stream or river channels. Check all that apply. ', '5'),
(56, 'Aquatic Habitats', '5'),
(57, 'Water Appearance and quality, standing or running water. Check all that apply.', '5'),
(58, 'Water Odor', '5'),
(59, 'Human disturbances adjacent to or affecting the waterway. If possible, walk around the perimeter of the waterway (or at least along one side of it) to look for possible drains, ditches, and other disturbances. Check all that apply and circle the predominate one. ', '5'),
(60, 'Characterize the extent of the human disturbance (s) in flood plains and waterways', '5'),
(61, 'Additional Notes:', '5'),
(62, 'Notes on any Species of plant or animal that you believe to be rare, threatened, or endangered. ', '6'),
(63, 'Notes on property owner''s comments or intentions (eg. "owner interested in conservation options"; "owner wants advice of controlling invasives")', '6'),
(64, 'Notes on diversity and habitat type of any of the ecosystems you assesses (eg. "Wetland B is a very diverse wooded swamp")', '6'),
(65, 'Notes on disturbance you found in any of the ecosystems', '6'),
(66, 'Notes on invasives you found in any of the ecosystems ("reed canary grass pervasive but there is also a great diversity of native species")', '6'),
(67, 'Notes of ecological quality of any of the ecosystems: (e.g. maturity of forest, hydrological characteristics of wetland)', '6'),
(68, 'Other Comments', '6');

-- --------------------------------------------------------

--
-- Table structure for table `tb_worksheettypes`
--

CREATE TABLE `tb_worksheettypes` (
  `worksheettype_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `worksheet_name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`worksheettype_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tb_worksheettypes`
--

INSERT INTO `tb_worksheettypes` (`worksheettype_id`, `worksheet_name`) VALUES
(1, 'Site Overview'),
(2, 'Wetlands'),
(3, 'Grasslands'),
(4, 'Forests'),
(5, 'Creeks/Waterways'),
(6, 'Site Summary');
