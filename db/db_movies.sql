-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 09, 2018 at 02:58 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_arating`
--

DROP TABLE IF EXISTS `tbl_arating`;
CREATE TABLE IF NOT EXISTS `tbl_arating` (
  `arating_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `arating_name` varchar(125) NOT NULL,
  `arating_desc` text NOT NULL,
  PRIMARY KEY (`arating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_arating`
--

INSERT INTO `tbl_arating` (`arating_id`, `arating_name`, `arating_desc`) VALUES
(1, 'G', 'G – General Audiences\r\nAll ages admitted. Nothing that would offend parents for viewing by children. '),
(2, 'PG', 'PG – Parental Guidance Suggested\r\nSome material may not be suitable for children. Parents urged to give  	&ldquo;parental guidance&rdquo;. '),
(3, 'PG-13', 'PG-13 – Parents Strongly Cautioned\r\nSome material may be inappropriate for children under 13. Parents are urged to be cautious. Some material may be inappropriate for pre-teenagers.'),
(4, 'R', 'R – Restricted\r\nUnder 17 requires accompanying parent or adult guardian. Contains some adult material. Parents are urged to learn more about the film before taking their young children with them. '),
(5, 'NC-17', 'NC-17 – Adults Only\r\nNo One 17 and Under Admitted. Clearly adult. Children are not admitted. ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cast`
--

DROP TABLE IF EXISTS `tbl_cast`;
CREATE TABLE IF NOT EXISTS `tbl_cast` (
  `cast_id` mediumint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cast_name` varchar(250) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`cast_id`)
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cast`
--

INSERT INTO `tbl_cast` (`cast_id`, `cast_name`) VALUES
(1, 'Bruce  Willis'),
(2, 'Alan Rickman'),
(3, 'Alexander Godunov'),
(4, 'Bonnie Bedelia'),
(5, 'Michael J Fox'),
(6, 'Christopher Lloyd'),
(7, 'Lea Tompson'),
(8, 'Cripsin Glover'),
(9, 'Harrison Ford'),
(10, 'Karen Allen'),
(11, 'Paul Freeman'),
(12, 'Ronald Lacey'),
(13, 'John Rhys-Davies'),
(14, 'Denholm Elliot'),
(15, 'Arnold Schwarzenegger'),
(16, 'Michael Beihn'),
(17, 'Linda Hamilton'),
(18, 'Paul Winfield'),
(19, 'Matthew Modine'),
(20, 'Vincent D\'Onofrio'),
(21, 'R. Lee Ermey'),
(22, 'Adam Baldwin'),
(23, 'Arliss Howard'),
(24, 'Dorian Harewood'),
(25, 'Kevyn Major Howard'),
(26, 'Ed O\'Ross'),
(27, 'Bill Murray'),
(28, 'Dan Aykroyd'),
(29, 'Sigourney Weaver'),
(30, 'Harold Ramis'),
(31, 'Rick Moranis'),
(32, 'Emilio Estevez'),
(33, 'Joss Ackland'),
(34, 'Lane Smith'),
(35, 'Tom Hanks'),
(36, 'Tim Allen'),
(37, 'Don Rickles'),
(38, 'Jim Varney'),
(39, 'Wallace Shawn'),
(40, 'John Ratzenberger'),
(41, 'Annie Potts'),
(42, 'John Morris'),
(43, 'Erik von Detten'),
(44, 'Matthew Broderick'),
(45, 'James Earl Jones'),
(46, 'Jeremy Irons'),
(47, 'Rowan Atkinson'),
(48, 'Moira Kelly'),
(49, 'Nathan Lane'),
(50, 'Ernie Sabella'),
(51, 'Robert Guillaume'),
(52, 'Johnathan Taylor Thomas'),
(53, 'Niketa Calame'),
(54, 'Whoopi Goldberg'),
(55, 'Cheech Marin'),
(56, 'Jim Cummings'),
(57, 'Madge Sinclair'),
(58, 'Chris Sarandon'),
(59, 'Danny Elfman'),
(60, 'Catherine O\'Hara'),
(61, 'William Hickey'),
(62, 'Glen Shadix'),
(63, 'Macaulay Culkin'),
(64, 'Joe Pesci'),
(65, 'Daniel Stern'),
(66, 'John Heard'),
(68, 'Rene Auberjonois'),
(69, 'Christopher Daniel Barnes'),
(70, 'Jodi Benson'),
(71, 'Pat Carrol'),
(72, 'Paul Reubans'),
(73, 'Elizabeth Daily'),
(74, 'Mark Holton'),
(75, 'Diane Salinger'),
(76, 'Drew Barrymore'),
(77, 'Dee Wallace'),
(78, 'Peter Coyote'),
(79, 'Henry Thomas'),
(80, 'Sean Astin'),
(81, 'Josh Brolin'),
(82, 'Jeff Cohen'),
(83, 'Corey Feldmen'),
(84, 'Cary Elwes'),
(85, 'Mandy Patinkin'),
(86, 'Christopher Guest'),
(87, 'Sterling Holloway'),
(88, 'Paul Winchell'),
(89, 'Junius Matthews'),
(90, 'Helen Reddy'),
(91, 'Jim Dale'),
(92, 'Mickey Rooney'),
(93, 'Jeff Conaway'),
(94, 'Angela Lansbury'),
(95, 'Bruce Forsyth'),
(96, 'David Tomlinson'),
(97, 'Gene Wilder'),
(98, 'Jack Albertson'),
(99, 'Roy Kinnear'),
(100, 'Phil Harris'),
(101, 'Eva Gabor'),
(102, 'Rod Taylor'),
(103, 'Cate Bauer'),
(104, 'Boris Karloff'),
(105, 'Julie Andrews'),
(106, 'Dick Van Dyke'),
(107, 'Christopher Plummer'),
(108, 'Russ Tamblyn'),
(109, 'Peter Sellers'),
(110, 'Bobby Driscoll'),
(111, 'Kathryn Beaumont'),
(112, 'Kirk Douglas'),
(113, 'James Mason'),
(114, 'Dorothy McGuire'),
(115, 'Fess Parker'),
(116, 'Ilene Woods'),
(117, 'Eleanor Audley');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

DROP TABLE IF EXISTS `tbl_comments`;
CREATE TABLE IF NOT EXISTS `tbl_comments` (
  `comments_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comments_auth` varchar(125) NOT NULL,
  `comments_copy` text NOT NULL,
  `comments_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comments_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

DROP TABLE IF EXISTS `tbl_country`;
CREATE TABLE IF NOT EXISTS `tbl_country` (
  `country_id` smallint(3) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(100) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'Albania'),
(2, 'Algeria'),
(3, 'Andorra'),
(4, 'Angola'),
(5, 'Anguilla'),
(6, 'Antarctica'),
(7, 'Antigua'),
(8, 'Antilles'),
(9, 'Argentina'),
(10, 'Armenia'),
(11, 'Aruba'),
(12, 'Australia'),
(13, 'Austria'),
(14, 'Azerbaijan'),
(15, 'Bahamas'),
(16, 'Bangladesh'),
(17, 'Barbados'),
(18, 'Belarus'),
(19, 'Belgium'),
(20, 'Belize'),
(21, 'Benin'),
(22, 'Bermuda'),
(23, 'Bhutan'),
(24, 'Bolivia'),
(25, 'Bosnia'),
(26, 'Botswana'),
(27, 'Brazil'),
(28, 'Brunei'),
(29, 'Bulgaria'),
(30, 'Burkina Faso'),
(31, 'Burundi'),
(32, 'Cambodia'),
(33, 'Cameroon'),
(34, 'Canada'),
(35, 'Cape Verde'),
(36, 'Cayman Islands'),
(37, 'Central Africa'),
(38, 'Chad'),
(39, 'Chile'),
(40, 'China'),
(41, 'Colombia'),
(42, 'Comoros'),
(43, 'Congo'),
(44, 'Cook Islands'),
(45, 'Costa Rica'),
(46, 'Cote D\'Ivoire'),
(47, 'Croatia'),
(48, 'Cuba'),
(49, 'Cyprus'),
(50, 'Czech Republic'),
(51, 'Denmark'),
(52, 'Djibouti'),
(53, 'Dominica'),
(54, 'Dominican Rep.'),
(55, 'Ecuador'),
(56, 'Egypt'),
(57, 'El Salvador'),
(58, 'Eritrea'),
(59, 'Estonia'),
(60, 'Ethiopia'),
(61, 'Fiji'),
(62, 'Finland'),
(63, 'Falkland Islands'),
(64, 'France'),
(65, 'Gabon'),
(66, 'Gambia'),
(67, 'Georgia'),
(68, 'Germany'),
(69, 'Ghana'),
(70, 'Gibraltar'),
(71, 'Greece'),
(72, 'Greenland'),
(73, 'Grenada'),
(74, 'Guam'),
(75, 'Guatemala'),
(76, 'Guiana'),
(77, 'Guinea'),
(78, 'Guyana'),
(79, 'Haiti'),
(80, 'Hondoras'),
(81, 'Hong Kong'),
(82, 'Hungary'),
(83, 'Iceland'),
(84, 'India'),
(85, 'Indonesia'),
(86, 'Iran'),
(87, 'Iraq'),
(88, 'Ireland'),
(89, 'Israel'),
(90, 'Italy'),
(91, 'Jamaica'),
(92, 'Japan'),
(93, 'Jordan'),
(94, 'Kazakhstan'),
(95, 'Kenya'),
(96, 'Kiribati'),
(97, 'Korea'),
(98, 'Kyrgyzstan'),
(99, 'Lao'),
(100, 'Latvia'),
(101, 'Lesotho'),
(102, 'Liberia'),
(103, 'Liechtenstein'),
(104, 'Lithuania'),
(105, 'Luxembourg'),
(106, 'Macau'),
(107, 'Macedonia'),
(108, 'Madagascar'),
(109, 'Malawi'),
(110, 'Malaysia'),
(111, 'Maldives'),
(112, 'Mali'),
(113, 'Malta'),
(114, 'Marshal Islands'),
(115, 'Martinique'),
(116, 'Mauritania'),
(117, 'Mauritius'),
(118, 'Mayotte'),
(119, 'Mexico'),
(120, 'Micronesia'),
(121, 'Moldova'),
(122, 'Monaco'),
(123, 'Mongolia'),
(124, 'Montserrat'),
(125, 'Morocco'),
(126, 'Mozambique'),
(127, 'Myanmar'),
(128, 'Namibia'),
(129, 'Nauru'),
(130, 'Nepal'),
(131, 'Netherlands'),
(132, 'New Caledonia'),
(133, 'New Guinea'),
(134, 'New Zealand'),
(135, 'Nicaragua'),
(136, 'Nigeria'),
(137, 'Niue'),
(138, 'Norfolk Island'),
(139, 'Norway'),
(140, 'Palau'),
(141, 'Panama'),
(142, 'Paraguay'),
(143, 'Peru'),
(144, 'Puerto'),
(145, 'Philippines'),
(146, 'Poland'),
(147, 'Polynesia'),
(148, 'Portugal'),
(149, 'Romania'),
(150, 'Russia'),
(151, 'Rwanda'),
(152, 'Saint Lucia'),
(153, 'Samoa'),
(154, 'San Marino'),
(155, 'Senegal'),
(156, 'Seychelles'),
(157, 'Sierra Leone'),
(158, 'Singapore'),
(159, 'Slovakia'),
(160, 'Slovenia'),
(161, 'Somalia'),
(162, 'South Africa'),
(163, 'Spain'),
(164, 'Sri Lanka'),
(165, 'St. Helena'),
(166, 'Sudan'),
(167, 'Suriname'),
(168, 'Swaziland'),
(169, 'Sweden'),
(170, 'Switzerland'),
(171, 'Taiwan'),
(172, 'Tajikistan'),
(173, 'Tanzania'),
(174, 'Thailand'),
(175, 'Togo'),
(176, 'Tokelau'),
(177, 'Tonga'),
(178, 'Trinidad'),
(179, 'Tunisia'),
(180, 'Turkey'),
(181, 'Uganda'),
(182, 'Ukraine'),
(183, 'United Kingdom'),
(184, 'United States'),
(185, 'Uruguay'),
(186, 'Uzbekistan'),
(187, 'Vanuatu'),
(188, 'Venezuela'),
(189, 'Vietnam'),
(190, 'Virgin Islands'),
(191, 'Yugoslavia'),
(192, 'Zaire'),
(193, 'Zambia'),
(194, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_director`
--

DROP TABLE IF EXISTS `tbl_director`;
CREATE TABLE IF NOT EXISTS `tbl_director` (
  `director_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `director_name` varchar(250) NOT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_director`
--

INSERT INTO `tbl_director` (`director_id`, `director_name`) VALUES
(1, 'James Gunn'),
(2, 'Christopher Nolan'),
(3, 'James Mangold'),
(4, 'Joon-ho Bong'),
(5, 'Bill Condon'),
(6, 'Mel Gibson'),
(7, 'Tim Miller'),
(8, 'Denis Villeneuve '),
(9, 'Dexter Fletcher'),
(10, 'Mike Mitchell'),
(11, 'Walt Dohrn'),
(12, 'Alejandro Gonzalez Inarritu'),
(13, 'John Crowley '),
(14, 'Robert Zemeckis'),
(15, 'Florian Gallenberger '),
(16, 'J.J. Abrams'),
(17, 'Damien Chazelle'),
(18, 'Joseph Gordon-Levitt '),
(19, 'Alfonso Cuaron'),
(20, 'Ang Lee'),
(21, 'David O. Russell');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

DROP TABLE IF EXISTS `tbl_genre`;
CREATE TABLE IF NOT EXISTS `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(125) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Historical'),
(6, 'Horror'),
(7, 'Drama'),
(8, 'Musical'),
(9, 'Science Fiction'),
(10, 'Fantasy'),
(11, 'War'),
(13, 'Cartoon'),
(14, 'Family'),
(15, 'Romance'),
(16, 'Sport');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

DROP TABLE IF EXISTS `tbl_language`;
CREATE TABLE IF NOT EXISTS `tbl_language` (
  `lang_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(250) NOT NULL,
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`) VALUES
(1, 'Abkhaz'),
(2, 'Afar'),
(3, 'Afrikaans'),
(4, 'Akan'),
(5, 'Albanian'),
(6, 'Amharic'),
(7, 'Arabic'),
(8, 'Aragonese'),
(9, 'Armenian'),
(10, 'Assamese'),
(11, 'Avaric'),
(12, 'Avestan'),
(13, 'Aymara'),
(14, 'Azerbaijani'),
(15, 'Bambara'),
(16, 'Bashkir'),
(17, 'Basque'),
(18, 'Belarusian'),
(19, 'Bengali'),
(20, 'Bihari'),
(21, 'Bislama'),
(22, 'Bosnian'),
(23, 'Breton'),
(24, 'Bulgarian'),
(25, 'Burmese'),
(26, 'Catalan'),
(27, 'Valencian'),
(28, 'Chamorro'),
(29, 'Chechen'),
(30, 'Chichewa'),
(31, 'Chewa'),
(32, 'Nyanja'),
(33, 'Chinese'),
(34, 'Chuvash'),
(35, 'Cornish'),
(36, 'Corsican'),
(37, 'Cree'),
(38, 'Croatian'),
(39, 'Czech'),
(40, 'Danish'),
(41, 'Divehi'),
(42, 'Dhivehi'),
(43, 'Maldivian'),
(44, 'Dutch'),
(45, 'English'),
(46, 'Esperanto'),
(47, 'Estonian'),
(48, 'Ewe'),
(49, 'Faroese'),
(50, 'Fijian'),
(51, 'Finnish'),
(52, 'French'),
(53, 'Fula'),
(54, 'Fulah'),
(55, 'Pulaar'),
(56, 'Pular'),
(57, 'Galician'),
(58, 'Georgian'),
(59, 'German'),
(60, 'Greek'),
(61, 'Guaraní'),
(62, 'Gujarati'),
(63, 'Haitian'),
(64, 'Haitian Creole'),
(65, 'Hausa'),
(66, 'Hebrew'),
(67, 'Herero'),
(68, 'Hindi'),
(69, 'Hiri Motu'),
(70, 'Hungarian'),
(71, 'Interlingua'),
(72, 'Indonesian'),
(73, 'Interlingue'),
(74, 'Irish'),
(75, 'Igbo'),
(76, 'Inupiaq'),
(77, 'Ido'),
(78, 'Icelandic'),
(79, 'Italian'),
(80, 'Inuktitut'),
(81, 'Japanese'),
(82, 'Javanese'),
(83, 'Kalaallisut'),
(84, 'Greenlandic'),
(85, 'Kannada'),
(86, 'Kanuri'),
(87, 'Kashmiri'),
(88, 'Kazakh'),
(89, 'Khmer'),
(90, 'Kikuyu'),
(91, 'Gikuyu'),
(92, 'Kinyarwanda'),
(93, 'Kirghiz'),
(94, 'Kyrgyz'),
(95, 'Komi'),
(96, 'Kongo'),
(97, 'Korean'),
(98, 'Kurdish'),
(99, 'Kwanyama'),
(100, 'Kuanyama'),
(101, 'Latin'),
(102, 'Luxembourgish'),
(103, 'Letzeburgesch'),
(104, 'Luganda'),
(105, 'Limburgish'),
(106, 'Limburgan'),
(107, 'Limburger'),
(108, 'Lingala'),
(109, 'Lao'),
(110, 'Lithuanian'),
(111, 'Luba-Katanga'),
(112, 'Latvian'),
(113, 'Manx'),
(114, 'Macedonian'),
(115, 'Malagasy'),
(116, 'Malay'),
(117, 'Malayalam'),
(118, 'Maltese'),
(119, 'Maori'),
(120, 'Marathi'),
(121, 'Marshallese'),
(122, 'Mongolian'),
(123, 'Nauru'),
(124, 'Navajo'),
(125, 'Navaho'),
(126, 'Norwegian Bokmal'),
(127, 'North Ndebele'),
(128, 'Nepali'),
(129, 'Ndonga'),
(130, 'Norwegian Nynorsk'),
(131, 'Norwegian'),
(132, 'Nuosu'),
(133, 'South Ndebele'),
(134, 'Occitan'),
(135, 'Ojibwe'),
(136, 'Ojibwa'),
(137, 'Old Church Slavonic'),
(138, 'Church Slavic'),
(139, 'Church Slavonic'),
(140, 'Old Bulgarian'),
(141, 'Old Slavonic'),
(142, 'Oromo'),
(143, 'Oriya'),
(144, 'Ossetian'),
(145, 'Ossetic'),
(146, 'Panjabi'),
(147, 'Punjabi'),
(148, 'Pali'),
(149, 'Persian'),
(150, 'Polish'),
(151, 'Pashto'),
(152, 'Pushto'),
(153, 'Portuguese'),
(154, 'Quechua'),
(155, 'Romansh'),
(156, 'Kirundi'),
(157, 'Romanian'),
(158, 'Moldavian'),
(159, 'Moldovan'),
(160, 'Russian'),
(161, 'Sanskrit'),
(162, 'Sardinian'),
(163, 'Sindhi'),
(164, 'Northern Sami'),
(165, 'Samoan'),
(166, 'Sango'),
(167, 'Serbian'),
(168, 'Scottish Gaelic'),
(169, 'Gaelic'),
(170, 'Shona'),
(171, 'Sinhala'),
(172, 'Sinhalese'),
(173, 'Slovak'),
(174, 'Slovene'),
(175, 'Somali'),
(176, 'Southern Sotho'),
(177, 'Spanish'),
(178, 'Castilian'),
(179, 'Sundanese'),
(180, 'Swahili'),
(181, 'Swati'),
(182, 'Swedish'),
(183, 'Tamil'),
(184, 'Telugu'),
(185, 'Tajik'),
(186, 'Thai'),
(187, 'Tigrinya'),
(188, 'Tibetan Standard'),
(189, 'Tibetan'),
(190, 'Turkmen'),
(191, 'Tagalog'),
(192, 'Tswana'),
(193, 'Tonga'),
(194, 'Turkish'),
(195, 'Tsonga'),
(196, 'Tatar'),
(197, 'Twi'),
(198, 'Tahitian'),
(199, 'Uighur'),
(200, 'Uyghur'),
(201, 'Ukrainian'),
(202, 'Urdu'),
(203, 'Uzbek'),
(204, 'Venda'),
(205, 'Vietnamese'),
(206, 'Volapuk'),
(207, 'Walloon'),
(208, 'Welsh'),
(209, 'Wolof'),
(210, 'Western Frisian'),
(211, 'Xhosa'),
(212, 'Yiddish'),
(213, 'Yoruba'),
(214, 'Zhuang'),
(215, 'Chuang');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

DROP TABLE IF EXISTS `tbl_movies`;
CREATE TABLE IF NOT EXISTS `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_cover` varchar(75) CHARACTER SET utf8 NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) CHARACTER SET utf8 NOT NULL,
  `movies_year` varchar(5) CHARACTER SET utf8 NOT NULL,
  `movies_runtime` varchar(25) CHARACTER SET utf8 NOT NULL,
  `movies_storyline` text CHARACTER SET utf8 NOT NULL,
  `movies_trailer` varchar(75) CHARACTER SET utf8 NOT NULL DEFAULT 'trailer_default.mp4',
  `movies_release` varchar(125) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`movies_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_runtime`, `movies_storyline`, `movies_trailer`, `movies_release`) VALUES
(7, 'cinderella.png', 'Cinderella', '1950', '1hr 15mins', 'When Cinderella\'s cruel stepmother prevents her from attending the Royal Ball, she gets some unexpected help from the lovable mice Gus and Jaq, and from her Fairy Godmother.', 'cinderella.mp4', 'March 5th, 1950'),
(8, 'oldyeller.png', 'Old Yeller', '1957', '1hr 19mins', 'A teenage boy grows to love a stray yellow dog while helping his mother and younger brother run their Texas homestead while their father is away on a cattle drive. First thought to be good-for-nothing mutt, Old Yeller is soon beloved by all.', 'oldyeller.mp4', 'December 25th, 1957'),
(9, '20000.png', '20,00 Leagues Under The See', '1954', '2hrs. 7mins', 'A ship sent to investigate a wave of mysterious sinkings encounters the advanced submarine, the Nautilus, commanded by Captain Nemo.', 'trailer_default.mp4', 'December 23, 1954'),
(10, 'peterpan.png', 'Peter Pan', '1953', '1hr 16mins', 'Wendy and her brothers are whisked away to the magical world of Neverland with the hero of their stories, Peter Pan.', 'peterpan.mp4', 'February 5th, 1953'),
(11, 'tomthumb.png', 'Tom Thumb', '1958', '1hr 38mins', 'Follows a boy, no bigger than a thumb, who manages to outwit two thieves determined to make a fortune from him.', 'tomthumb.mp4', 'December 22nd, 1958'),
(12, 'soundmusic.png', 'The Sound of Music', '1965', '2hrs, 54mins', 'A woman leaves an Austrian convent to become a governess to the children of a Naval officer widower.', 'soundmusic.mp4', 'March 2nd, 1965'),
(13, 'marypoppins.png', 'Mary Poppins', '1964', '2hrs 19mins', 'In turn of the century London, a magical nanny employs music and adventure to help two neglected children become closer to their father.', 'marypoppins.mp4', 'August 27th, 1964'),
(14, 'junglebook.png', 'The Jungle Book', '1967', '1hr 18mins', 'Bagheera the Panther and Baloo the Bear have a difficult time trying to convince a boy to leave the jungle for human civilization.', 'junglebook.mp4', 'October 18th, 1967'),
(15, 'grinch.png', 'How The Grinch Stole Christmas', '1966', '26mins', 'A grumpy hermit hatches a plan to steal Christmas from the Whos of Whoville.', 'grinch.mp4', 'December 18th, 1966'),
(16, '101dalmations.png', '101 Dalmations', '1961', '1hr 19mins', 'When a litter of Dalmatian puppies are abducted by the minions of Cruella de Vil, the parents must find them before she uses them for a diabolical fashion statement.', '101dalmations.mp4', 'Jan 25th, 1961'),
(17, 'aristocats.png', 'The Aristocats', '1970', '1hr 18mins', 'With the help of a smooth talking tomcat, a family of Parisian felines set to inherit a fortune from their owner try to make it back home after a jealous butler kidnaps them and leaves them in the country.', 'aristocats.mp4', 'December 24th, 1970'),
(18, 'willywonka.png', 'Willy Wonka and the Chocolate Factory', '1971', '1hr 39mins', 'Charlie receives a golden ticket to a factory, his sweet tooth wants going into the lushing candy, it turns out there\'s an adventure in everything', 'willywonka.mp4', 'June 30th, 1971'),
(19, 'bedknobs.png', 'Bedknobs and Broomsticks', '1971', '2hrs, 19mins', 'An apprentice witch, three kids and a cynical conman search for the missing component to a magic spell useful to the defense of Britain.', 'bedknobs.mp4', 'December 13th, 1971'),
(20, 'petesdragon.png', 'Pete\'s Dragon', '1977', '2hrs 14mins', 'An orphan boy and his magical dragon come to town with his abusive adoptive parents in pursuit.', 'petesdragon.mp4', 'November 3rd, 1977'),
(21, 'winnietigger.png', 'Winnie The Pooh and Tigger Too', '1974', '25mins', 'Rabbit is tired of Tigger always bouncing him, so he gets Pooh and Piglet together to come up with an idea to get the bounce out of Tigger.', 'winnietiggert.mp4', 'December 20th, 2974'),
(22, 'princessbride.png', 'The Princess Bride', '1987', '1hr 38mins', 'While home sick in bed, a young boy\'s grandfather reads him a story called The Princess Bride.', 'princessbride.mp4', 'September 25th, 1987'),
(23, 'thegoonies.png', 'The Goonies', '1985', '1hr 54mins', 'In order to save their home from foreclosure, a group of misfits set out to find a pirate\'s ancient valuable treasure.', 'goonies.mp4', 'June 7th, 1985'),
(24, 'et.png', 'E.t the Extra-Terrestrial', '1982', '1hr 54mins', 'A troubled child summons the courage to help a friendly alien escape Earth and return to his home world.', 'et.mp4', 'June 11th, 1982'),
(25, 'peewee.png', 'Pee Wee\'s Big Adventure', '1985', '1hr 31mins', 'When eccentric man-child Pee-Wee Herman gets his beloved bike stolen in broad daylight, he sets out across the U.S. on the adventure of his life.', 'peewee.mp4', 'August 9th, 1985'),
(26, 'littlemermaid.png', 'The Little Mermaid', '1989', '1hr 23mins', 'A mermaid princess makes a Faustian bargain with an unscrupulous sea-witch in order to meet a human prince on land.', 'trailer_default.mp4', 'Nob 17th, 1989'),
(27, 'homealone.png', 'Home Alone', '1990', '1hr 43mins', 'An eight-year-old troublemaker must protect his house from a pair of burglars when he is accidentally left home alone by his family during Christmas vacation.', 'homealone.mp4', 'November 16th, 1990'),
(28, 'nightmare.png', 'The Nightmare Before Christmas', '1993', '1hr 16mins', 'Jack Skellington, king of Halloween Town, discovers Christmas Town, but his attempts to bring Christmas to his home cause confusion.', 'nightmare.mp4', 'October 29th, 1993'),
(29, 'lionking.png', 'The Lion King', '1994', '1hr 28mins', 'A Lion cub crown prince is tricked by a treacherous uncle into thinking he caused his father\'s death and flees into exile in despair, only to learn in adulthood his identity and his responsibilities.', 'lionking.mp4', 'June 15th, 1994'),
(30, 'toystory.png', 'Toy Story', '1995', '1hr 21mins', 'A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy\'s room.', 'toystory.mp4', 'November 22th, 1994'),
(31, 'mightyducks.png', 'The Mighty Ducks', '1992', '1hr 44mins', 'A self-centered Minnesota lawyer is sentenced to community service coaching a rag tag youth hockey team.\r\n', 'mightyducks.mp4', 'October 2nd, 1992');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_cast`
--

DROP TABLE IF EXISTS `tbl_mov_cast`;
CREATE TABLE IF NOT EXISTS `tbl_mov_cast` (
  `mov_cast_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `cast_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_cast_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_country`
--

DROP TABLE IF EXISTS `tbl_mov_country`;
CREATE TABLE IF NOT EXISTS `tbl_mov_country` (
  `mov_country_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `country_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_country`
--

INSERT INTO `tbl_mov_country` (`mov_country_id`, `movies_id`, `country_id`) VALUES
(1, 1, 34),
(2, 1, 134),
(3, 1, 184),
(4, 2, 184),
(5, 2, 183),
(6, 2, 131),
(7, 2, 64),
(8, 3, 12),
(9, 3, 34),
(10, 3, 184),
(11, 4, 184),
(12, 4, 97),
(13, 5, 183),
(14, 5, 184),
(15, 6, 184),
(16, 6, 12),
(17, 7, 184),
(18, 8, 184),
(19, 9, 183),
(20, 9, 184),
(21, 9, 68),
(22, 10, 184),
(23, 11, 184),
(24, 11, 81),
(25, 11, 171);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_director`
--

DROP TABLE IF EXISTS `tbl_mov_director`;
CREATE TABLE IF NOT EXISTS `tbl_mov_director` (
  `mov_director_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `director_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_director`
--

INSERT INTO `tbl_mov_director` (`mov_director_id`, `movies_id`, `director_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 10, 11),
(12, 11, 12),
(13, 12, 13),
(14, 13, 14),
(15, 14, 15),
(16, 15, 16),
(17, 16, 17),
(18, 17, 1),
(19, 18, 19),
(20, 19, 20),
(21, 20, 21);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

DROP TABLE IF EXISTS `tbl_mov_genre`;
CREATE TABLE IF NOT EXISTS `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_genre_id`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 9),
(2, 1, 10),
(3, 2, 1),
(4, 2, 2),
(5, 2, 10),
(6, 3, 6),
(7, 3, 9),
(8, 3, 10),
(9, 4, 1),
(10, 4, 9),
(11, 4, 10),
(12, 5, 1),
(13, 5, 4),
(15, 5, 4),
(16, 6, 1),
(17, 6, 7),
(18, 6, 11),
(19, 7, 7),
(20, 7, 10),
(21, 7, 13),
(22, 7, 14),
(23, 7, 15),
(24, 8, 2),
(25, 8, 7),
(26, 8, 5),
(27, 9, 7),
(28, 9, 10),
(29, 10, 2),
(30, 10, 10),
(31, 11, 7),
(32, 11, 10),
(33, 12, 5),
(34, 12, 7),
(35, 12, 8),
(36, 12, 14),
(37, 12, 15),
(38, 8, 14),
(39, 9, 14),
(40, 10, 14),
(41, 11, 14),
(42, 13, 14),
(43, 13, 8),
(44, 13, 10),
(45, 14, 14),
(46, 14, 2),
(47, 14, 7),
(48, 15, 14),
(49, 15, 3),
(50, 15, 10),
(51, 16, 14),
(52, 16, 4),
(53, 16, 7),
(54, 17, 14),
(55, 17, 3),
(56, 17, 2),
(57, 17, 8),
(58, 18, 14),
(59, 18, 10),
(60, 18, 3),
(61, 18, 8),
(62, 19, 14),
(63, 19, 10),
(64, 19, 3),
(65, 20, 14),
(66, 20, 1),
(67, 20, 10),
(68, 21, 14),
(70, 21, 14),
(71, 21, 3),
(72, 21, 13),
(73, 22, 14),
(74, 22, 10),
(75, 22, 15),
(76, 23, 14),
(77, 23, 1),
(78, 23, 2),
(79, 23, 10),
(80, 24, 14),
(81, 24, 7),
(82, 24, 9),
(83, 24, 10),
(84, 25, 14),
(85, 25, 3),
(86, 25, 2),
(87, 26, 14),
(88, 26, 7),
(89, 26, 8),
(90, 26, 10),
(91, 27, 14),
(92, 27, 1),
(93, 27, 2),
(94, 27, 3),
(95, 28, 14),
(96, 28, 10),
(97, 28, 13),
(98, 29, 14),
(99, 29, 7),
(100, 29, 8),
(101, 29, 13),
(102, 30, 14),
(103, 30, 13),
(104, 30, 3),
(105, 30, 2),
(106, 31, 14),
(107, 31, 16),
(108, 31, 3),
(109, 31, 7),
(110, 32, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_lang`
--

DROP TABLE IF EXISTS `tbl_mov_lang`;
CREATE TABLE IF NOT EXISTS `tbl_mov_lang` (
  `mov_lang_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `language_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_lang`
--

INSERT INTO `tbl_mov_lang` (`mov_lang_id`, `movies_id`, `language_id`) VALUES
(1, 1, 45),
(2, 2, 45),
(3, 2, 52),
(4, 2, 59),
(5, 3, 45),
(6, 3, 177),
(7, 4, 45),
(8, 4, 177),
(9, 4, 97),
(10, 5, 45),
(11, 6, 45),
(12, 6, 81),
(13, 7, 45),
(14, 8, 45),
(15, 8, 33),
(16, 8, 160),
(17, 9, 45),
(18, 9, 126),
(19, 9, 59),
(20, 10, 45),
(21, 11, 45),
(22, 11, 52);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_rating`
--

DROP TABLE IF EXISTS `tbl_mov_rating`;
CREATE TABLE IF NOT EXISTS `tbl_mov_rating` (
  `mov_rating_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `rating_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_rating_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mov_rating`
--

INSERT INTO `tbl_mov_rating` (`mov_rating_id`, `movies_id`, `rating_id`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 3, 2),
(4, 4, 4),
(5, 5, 4),
(6, 6, 5),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 20, 1),
(22, 21, 1),
(23, 22, 2),
(24, 23, 2),
(25, 24, 2),
(26, 25, 2),
(27, 26, 1),
(28, 27, 2),
(29, 28, 2),
(30, 29, 1),
(31, 30, 1),
(32, 31, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_studio`
--

DROP TABLE IF EXISTS `tbl_mov_studio`;
CREATE TABLE IF NOT EXISTS `tbl_mov_studio` (
  `mov_studio_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `studio_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_studio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_studio`
--

INSERT INTO `tbl_mov_studio` (`mov_studio_id`, `movies_id`, `studio_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 1),
(18, 18, 17),
(19, 19, 18),
(20, 20, 19),
(21, 21, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

DROP TABLE IF EXISTS `tbl_rating`;
CREATE TABLE IF NOT EXISTS `tbl_rating` (
  `rating_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rating_name` varchar(125) CHARACTER SET utf8 NOT NULL,
  `rating_desc` text NOT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_rating`
--

INSERT INTO `tbl_rating` (`rating_id`, `rating_name`, `rating_desc`) VALUES
(1, 'G', 'General Audiences\r\nAll ages admitted. Nothing that would offend parents for viewing by children. '),
(2, 'PG', 'Parental Guidance Suggested\r\nSome material may not be suitable for children. Parents urged to give  	parental guidance.'),
(3, 'PG-13', 'Parents Strongly Cautioned\r\nSome material may be inappropriate for children under 13. Parents are urged to be cautious. Some material may be inappropriate for pre-teenagers.'),
(4, 'R', 'Restricted\r\nUnder 17 requires accompanying parent or adult guardian. Contains some adult material. Parents are urged to learn more about the film before taking their young children with them. '),
(5, 'NC-17', 'Adults Only\r\nNo One 17 and Under Admitted. Clearly adult. Children are not admitted. '),
(6, '14A', 'Suitable for viewers 14 years of age and older. Viewers under 14 must be accompanied by an adult. May contain violence, coarse language, sexually suggestive scenes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_studio`
--

DROP TABLE IF EXISTS `tbl_studio`;
CREATE TABLE IF NOT EXISTS `tbl_studio` (
  `studio_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `studio_name` varchar(125) NOT NULL,
  PRIMARY KEY (`studio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_studio`
--

INSERT INTO `tbl_studio` (`studio_id`, `studio_name`) VALUES
(1, 'Marvel Studios'),
(2, 'Syncopy'),
(3, 'Donners Company'),
(4, 'Kate Street Picture Company'),
(5, 'Mandeville Films'),
(6, 'Cross Creek Pictures'),
(7, 'Twentieth Century Fox Film Corporation'),
(8, 'Lava Bear Films'),
(9, 'Hurwitz Creative'),
(10, 'DreamWorks Animation'),
(11, 'Regency Enterprises'),
(12, 'Wildgaze Films'),
(13, 'Sony Pictures Entertainment (SPE)'),
(14, 'Majestic Filmproduktion'),
(15, 'Lucasfilm'),
(16, 'Bold Films'),
(17, 'Voltage Pictures'),
(18, 'Warner Bros.'),
(19, 'Fox 2000 Pictures'),
(20, 'Weinstein Company');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_urating`
--

DROP TABLE IF EXISTS `tbl_urating`;
CREATE TABLE IF NOT EXISTS `tbl_urating` (
  `urating_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `urating_number` tinyint(5) NOT NULL,
  PRIMARY KEY (`urating_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pw` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_level` int(50) NOT NULL,
  `user_ip` varchar(50) NOT NULL,
  `user_firstlogin` varchar(10) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pw`, `user_email`, `user_date`, `user_level`, `user_ip`, `user_firstlogin`) VALUES
(1, 'Jen', 'jeni', '1234', 'jen@rozman.com', '2018-04-09 01:48:31', 1, '::1', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
