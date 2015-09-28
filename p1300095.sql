-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Ven 25 Septembre 2015 à 14:45
-- Version du serveur: 5.1.73
-- Version de PHP: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `p1300095`
--

-- --------------------------------------------------------

--
-- Structure de la table `alliance`
--

CREATE TABLE IF NOT EXISTS `alliance` (
  `numVip1` int(10) NOT NULL,
  `numVip2` int(10) NOT NULL,
  `dateEvenement` date NOT NULL,
  `codeEtat` int(1) NOT NULL,
  `lieu` varchar(100) NOT NULL,
  PRIMARY KEY (`numVip1`,`dateEvenement`),
  KEY `numVip2` (`numVip2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `alliance`
--

INSERT INTO `alliance` (`numVip1`, `numVip2`, `dateEvenement`, `codeEtat`, `lieu`) VALUES
(3, 17, '1989-04-08', 1, 'Las Vegas'),
(3, 17, '1993-06-08', 2, ''),
(3, 18, '2014-09-27', 1, 'Venise');

-- --------------------------------------------------------

--
-- Structure de la table `apparait`
--

CREATE TABLE IF NOT EXISTS `apparait` (
  `numVip` int(10) NOT NULL,
  `idPhoto` int(10) NOT NULL,
  PRIMARY KEY (`numVip`,`idPhoto`),
  KEY `Apparait_ibfk_2` (`idPhoto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `apparait`
--

INSERT INTO `apparait` (`numVip`, `idPhoto`) VALUES
(3, 1),
(2, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 10),
(3, 11),
(3, 13);

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE IF NOT EXISTS `film` (
  `numVisa` int(10) NOT NULL AUTO_INCREMENT,
  `titre` varchar(30) NOT NULL,
  `anneeSortie` int(4) NOT NULL,
  `numGenre` int(4) NOT NULL,
  `synopsis` text NOT NULL,
  `photo` varchar(250) NOT NULL,
  PRIMARY KEY (`numVisa`),
  KEY `numGenre` (`numGenre`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `film`
--

INSERT INTO `film` (`numVisa`, `titre`, `anneeSortie`, `numGenre`, `synopsis`, `photo`) VALUES
(2, 'Ocean''s Eleven', 2002, 1, 'Après deux ans passés dans la prison du New Jersey, Danny Ocean retrouve la liberté et s''apprête à monter un coup qui semble impossible à réaliser : cambrioler dans le même temps les casinos Bellagio, Mirage et MGM Grand, avec une jolie somme de 150 millions de dollars à la clé. Il souhaite également récupérer Tess, sa bien-aimée que lui a volée Terry Benedict, le propriétaire de ces trois somptueux établissements de jeux de Las Vegas.\r\nPour ce faire, Danny et son ami Rusty Ryan composent une équipe de dix malfrats maîtres dans leur spécialité. Parmi eux figurent Linus Caldwell, le pickpocket le plus agile qui soit ; Roscoe Means, un expert en explosifs ; Ruben Tishkoff, qui connaît les systèmes de sécurité des casinos sur le bout des doigts ; les frères Virgil et Turk Malloy, capables de revêtir plusieurs identités ; ou encore Yen, véritable contorsionniste et acrobate.', 'http://www.google.fr/url?source=imglanding&ct=img&q=http://www.dramafever.com/st/news/images/oceans_eleven.jpg&sa=X&ei=O6iBVZ7cA8rzUKargNgI&ved=0CAkQ8wc&usg=AFQjCNFKidLTi5nCyWtTOXpzh9G1q5bz5Q'),
(3, 'O''Brother', 2000, 3, 'Dans le Mississippi profond, pendant la Grande Depression. Trois prisonniers enchainés s''évadent du bagne : Ulysses Everett McGill, le gentil et simple Delmar et l''éternel râleur Pete. Ils tentent l''aventure de leur vie pour retrouver leur liberté et leur maison. N''ayant rien à perdre et unis par leurs chaînes, ils entreprennent un voyage semé d''embuches et riche en personnages hauts en couleur. Mais ils devront redoubler d''inventivité pour échapper au mystérieux et rusé shérif Cooley, lancé à leur poursuite...', 'http://www.google.fr/url?source=imglanding&ct=img&q=http://www.sevensept.com/sites/sevensept.com/files/imagecache/gallery/uploads/images/films/obrother.jpg&sa=X&ei=dIyCVbbhA8KqUbuOguAK&ved=0CAkQ8wc&usg=AFQjCNH0ThJAUsxFcRjO2iTeF-O_rA_dsg');

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE IF NOT EXISTS `genre` (
  `numGenre` int(4) NOT NULL AUTO_INCREMENT,
  `libelleGenre` varchar(40) NOT NULL,
  PRIMARY KEY (`numGenre`,`libelleGenre`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `genre`
--

INSERT INTO `genre` (`numGenre`, `libelleGenre`) VALUES
(1, 'Thriller'),
(2, 'Drame'),
(3, 'Comédie');

-- --------------------------------------------------------

--
-- Structure de la table `jouer`
--

CREATE TABLE IF NOT EXISTS `jouer` (
  `numVip` int(10) NOT NULL,
  `numVisa` int(10) NOT NULL,
  PRIMARY KEY (`numVip`,`numVisa`),
  KEY `numVisa` (`numVisa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `jouer`
--

INSERT INTO `jouer` (`numVip`, `numVisa`) VALUES
(3, 2),
(19, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE IF NOT EXISTS `pays` (
  `numPays` int(3) NOT NULL,
  `nomPays` varchar(30) NOT NULL,
  PRIMARY KEY (`numPays`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `pays`
--

INSERT INTO `pays` (`numPays`, `nomPays`) VALUES
(0, 'Britannique'),
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Antarctica'),
(4, 'Algeria'),
(5, 'American Samoa'),
(6, 'Andorra'),
(7, 'Angola'),
(8, 'Antigua and Barbuda'),
(9, 'Azerbaijan'),
(10, 'Argentina'),
(11, 'Australia'),
(12, 'Austria'),
(13, 'Bahamas'),
(14, 'Bahrain'),
(15, 'Bangladesh'),
(16, 'Armenia'),
(17, 'Barbados'),
(18, 'Belgium'),
(19, 'Bermuda'),
(20, 'Bhutan'),
(21, 'Bolivia'),
(22, 'Bosnia and Herzegovina'),
(23, 'Botswana'),
(24, 'Bouvet Island'),
(25, 'Brazil'),
(26, 'Belize'),
(27, 'British Indian Ocean Territory'),
(28, 'Solomon Islands'),
(29, 'British Virgin Islands'),
(30, 'Brunei Darussalam'),
(31, 'Bulgaria'),
(32, 'Myanmar'),
(33, 'Burundi'),
(34, 'Belarus'),
(35, 'Cambodia'),
(36, 'Cameroon'),
(37, 'Canada'),
(38, 'Cape Verde'),
(39, 'Cayman Islands'),
(40, 'Central African'),
(41, 'Sri Lanka'),
(42, 'Chad'),
(43, 'Chile'),
(44, 'China'),
(45, 'Taiwan'),
(46, 'Christmas Island'),
(47, 'Cocos (Keeling) Islands'),
(48, 'Colombia'),
(49, 'Comoros'),
(50, 'Mayotte'),
(51, 'Republic of the Congo'),
(52, 'The Democratic Republic Of The'),
(53, 'Cook Islands'),
(54, 'Costa Rica'),
(55, 'Croatia'),
(56, 'Cuba'),
(57, 'Cyprus'),
(58, 'Czech Republic'),
(59, 'Benin'),
(60, 'Denmark'),
(61, 'Dominica'),
(62, 'Dominican Republic'),
(63, 'Ecuador'),
(64, 'El Salvador'),
(65, 'Equatorial Guinea'),
(66, 'Ethiopia'),
(67, 'Eritrea'),
(68, 'Estonia'),
(69, 'Faroe Islands'),
(70, 'Falkland Islands'),
(71, 'South Georgia and the South Sa'),
(72, 'Fiji'),
(73, 'Finland'),
(74, 'Åland Islands'),
(75, 'France'),
(76, 'French Guiana'),
(77, 'French Polynesia'),
(78, 'French Southern Territories'),
(79, 'Djibouti'),
(80, 'Gabon'),
(81, 'Georgia'),
(82, 'Gambia'),
(83, 'Occupied Palestinian Territory'),
(84, 'Germany'),
(85, 'Ghana'),
(86, 'Gibraltar'),
(87, 'Kiribati'),
(88, 'Greece'),
(89, 'Greenland'),
(90, 'Grenada'),
(91, 'Guadeloupe'),
(92, 'Guam'),
(93, 'Guatemala'),
(94, 'Guinea'),
(95, 'Guyana'),
(96, 'Haiti'),
(97, 'Heard Island and McDonald Isla'),
(98, 'Vatican City State'),
(99, 'Honduras'),
(100, 'Hong Kong'),
(101, 'Hungary'),
(102, 'Iceland'),
(103, 'India'),
(104, 'Indonesia'),
(105, 'Islamic Republic of Iran'),
(106, 'Iraq'),
(107, 'Ireland'),
(108, 'Israel'),
(109, 'Italy'),
(110, 'Côte d''Ivoire'),
(111, 'Jamaica'),
(112, 'Japan'),
(113, 'Kazakhstan'),
(114, 'Jordan'),
(115, 'Kenya'),
(116, 'Democratic People''s Republic o'),
(117, 'Republic of Korea'),
(118, 'Kuwait'),
(119, 'Kyrgyzstan'),
(120, 'Lao People''s Democratic Republ'),
(121, 'Lebanon'),
(122, 'Lesotho'),
(123, 'Latvia'),
(124, 'Liberia'),
(125, 'Libyan Arab Jamahiriya'),
(126, 'Liechtenstein'),
(127, 'Lithuania'),
(128, 'Luxembourg'),
(129, 'Macao'),
(130, 'Madagascar'),
(131, 'Malawi'),
(132, 'Malaysia'),
(133, 'Maldives'),
(134, 'Mali'),
(135, 'Malta'),
(136, 'Martinique'),
(137, 'Mauritania'),
(138, 'Mauritius'),
(139, 'Mexico'),
(140, 'Monaco'),
(141, 'Mongolia'),
(142, 'Republic of Moldova'),
(143, 'Montserrat'),
(144, 'Morocco'),
(145, 'Mozambique'),
(146, 'Oman'),
(147, 'Namibia'),
(148, 'Nauru'),
(149, 'Nepal'),
(150, 'Netherlands'),
(151, 'Netherlands Antilles'),
(152, 'Aruba'),
(153, 'New Caledonia'),
(154, 'Vanuatu'),
(155, 'New Zealand'),
(156, 'Nicaragua'),
(157, 'Niger'),
(158, 'Nigeria'),
(159, 'Niue'),
(160, 'Norfolk Island'),
(161, 'Norway'),
(162, 'Northern Mariana Islands'),
(163, 'United States Minor Outlying I'),
(164, 'Federated States of Micronesia'),
(165, 'Marshall Islands'),
(166, 'Palau'),
(167, 'Pakistan'),
(168, 'Panama'),
(169, 'Papua New Guinea'),
(170, 'Paraguay'),
(171, 'Peru'),
(172, 'Philippines'),
(173, 'Pitcairn'),
(174, 'Poland'),
(175, 'Portugal'),
(176, 'Guinea-Bissau'),
(177, 'Timor-Leste'),
(178, 'Puerto Rico'),
(179, 'Qatar'),
(180, 'Réunion'),
(181, 'Romania'),
(182, 'Russian Federation'),
(183, 'Rwanda'),
(184, 'Saint Helena'),
(185, 'Saint Kitts and Nevis'),
(186, 'Anguilla'),
(187, 'Saint Lucia'),
(188, 'Saint-Pierre and Miquelon'),
(189, 'Saint Vincent and the Grenadin'),
(190, 'San Marino'),
(191, 'Sao Tome and Principe'),
(192, 'Saudi Arabia'),
(193, 'Senegal'),
(194, 'Seychelles'),
(195, 'Sierra Leone'),
(196, 'Singapore'),
(197, 'Slovakia'),
(198, 'Vietnam'),
(199, 'Slovenia'),
(200, 'Somalia'),
(201, 'South Africa'),
(202, 'Zimbabwe'),
(203, 'Spain'),
(204, 'Western Sahara'),
(205, 'Sudan'),
(206, 'Suriname'),
(207, 'Svalbard and Jan Mayen'),
(208, 'Swaziland'),
(209, 'Sweden'),
(210, 'Switzerland'),
(211, 'Syrian Arab Republic'),
(212, 'Tajikistan'),
(213, 'Thailand'),
(214, 'Togo'),
(215, 'Tokelau'),
(216, 'Tonga'),
(217, 'Trinidad and Tobago'),
(218, 'United Arab Emirates'),
(219, 'Tunisia'),
(220, 'Turkey'),
(221, 'Turkmenistan'),
(222, 'Turks and Caicos Islands'),
(223, 'Tuvalu'),
(224, 'Uganda'),
(225, 'Ukraine'),
(226, 'The Former Yugoslav Republic o'),
(227, 'Egypt'),
(228, 'United Kingdom'),
(229, 'Isle of Man'),
(230, 'United Republic Of Tanzania'),
(231, 'Etats-Unis'),
(232, 'U.S. Virgin Islands'),
(233, 'Burkina Faso'),
(234, 'Uruguay'),
(235, 'Uzbekistan'),
(236, 'Venezuela'),
(237, 'Wallis and Futuna'),
(238, 'Samoa'),
(239, 'Yemen'),
(240, 'Serbia and Montenegro'),
(241, 'Zambia'),
(242, 'Britannique');

-- --------------------------------------------------------

--
-- Structure de la table `photo`
--

CREATE TABLE IF NOT EXISTS `photo` (
  `idPhoto` int(10) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `lieu` varchar(100) NOT NULL,
  `annee` int(4) NOT NULL,
  PRIMARY KEY (`idPhoto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Contenu de la table `photo`
--

INSERT INTO `photo` (`idPhoto`, `url`, `lieu`, `annee`) VALUES
(1, 'http://www.google.fr/url?source=imglanding&ct=img&q=http://static.lexpress.fr/medias_7937/w_605,h_454,c_fill,g_north/o-brother-george-clooney_4064128.jpg&sa=X&ei=jh6DVZ2cO8TuUObGgogL&ved=0CAkQ8wc&usg=AFQjCNGni1mZ8SRjeDxq7wq91qM4UYhqrA', 'Etat-Unis', 2003),
(2, 'http://www.google.fr/url?source=imglanding&ct=img&q=http://www.doctormacro.com/Images/Dean,%20James/Annex/Annex%20-%20Dean,%20James_08.jpg&sa=X&ei=RF9xVaHfG4HpUN_6gIgM&ved=0CAkQ8wc4GA&usg=AFQjCNEKKC7MeiewBCK87SdTc3S_rkP8pw', 'Paris', 1953),
(3, 'http://www.google.fr/url?source=imglanding&ct=img&q=http://img2-1.timeinc.net/people/i/2013/news/131111/george-clooney-300.jpg&sa=X&ei=dmBxVeaIIcj2UJ7SgbAI&ved=0CAkQ8wc4FA&usg=AFQjCNHkSi2QpKX5eroMDqygyDDzSIU99w', 'Cannes', 2007),
(4, 'http://www.google.fr/url?source=imglanding&ct=img&q=http://imworld.aufeminin.com/story/20140527/george-clooney-244832_w1000.jpg&sa=X&ved=0CAkQ8wdqFQoTCKCEnd7FkcYCFUmzFAodsvkATw&usg=AFQjCNEeNW6TNQRAzAiHDfyxzW9mOGAnOw', 'Cannes', 2005),
(5, 'http://www.google.fr/url?source=imglanding&ct=img&q=http://www.femmesmagazine.lu/images/culture-cine-tom-ford-george-clooney-nocturnal-animals.jpg&sa=X&ei=kB6DVZOHDYPqUrKigfgG&ved=0CAkQ8wc&usg=AFQjCNE6hV8YMq4IbEsnzIXsJi6CFtbAKQ', 'Cannes', 2003),
(6, 'http://www.google.fr/url?source=imglanding&ct=img&q=http://imworld.aufeminin.com/story/20140821/george-clooney-de-retour-dans-urgences-457046_w1000.jpg&sa=X&ei=oB6DVYi5GsKtU_WrgegJ&ved=0CAkQ8wc4HQ&usg=AFQjCNHhan40d28dhXKwHSv0G9UaTIiF9g', 'Cannes', 2002),
(10, 'http://www.google.fr/url?source=imglanding&ct=img&q=https://s-media-cache-ak0.pinimg.com/736x/a2/83/5a/a2835a76b4e380d2202074a5f6e05831.jpg&sa=X&ei=GB-DVca6DonwUo_SgvAG&ved=0CAkQ8wc&usg=AFQjCNH7t8YV8fQluPn8ur7y-GvhpxmRJw', 'Cannes', 1980),
(11, 'http://www.google.fr/url?source=imglanding&ct=img&q=https://s-media-cache-ak0.pinimg.com/236x/c9/f4/6e/c9f46e93a0af1e533c87954f21094d01.jpg&sa=X&ei=Gx-DVdi9LsL2UuCHgbgB&ved=0CAkQ8wc&usg=AFQjCNEqoFCIHb69F0Rvd_RL-8zK_SgHgg', 'Cannes', 1985),
(13, 'http://cdn2-b.examiner.com/sites/default/files/styles/image_content_width/hash/65/7a/657a266489ac47b85c683771b3edf121.jpg?itok=R0lQiOgg&sa=X&ei=HR-DVd3hCoaxUcO9gfgN&ved=0CAkQ8wc&usg=AFQjCNER0Uj1meXqzGuu_y4YtwsMUVCrMg', 'Lyon', 1990);

-- --------------------------------------------------------

--
-- Structure de la table `realise`
--

CREATE TABLE IF NOT EXISTS `realise` (
  `numVip` int(10) NOT NULL,
  `numVisa` int(10) NOT NULL,
  PRIMARY KEY (`numVip`,`numVisa`),
  KEY `Realise_fkb_numVisa` (`numVisa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `realise`
--

INSERT INTO `realise` (`numVip`, `numVisa`) VALUES
(20, 2);

-- --------------------------------------------------------

--
-- Structure de la table `vip`
--

CREATE TABLE IF NOT EXISTS `vip` (
  `numVip` int(10) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  `prenomUsuel` varchar(30) NOT NULL,
  `profession` varchar(30) NOT NULL,
  `civilite` varchar(1) NOT NULL,
  `dateNaissance` date NOT NULL,
  `lieuNaissance` varchar(100) NOT NULL,
  `situationPerso` int(1) NOT NULL,
  `numPays` int(3) NOT NULL,
  `imgProfil` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`numVip`),
  KEY `numPays` (`numPays`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Contenu de la table `vip`
--

INSERT INTO `vip` (`numVip`, `nom`, `prenomUsuel`, `profession`, `civilite`, `dateNaissance`, `lieuNaissance`, `situationPerso`, `numPays`, `imgProfil`) VALUES
(1, 'De Niro', 'Robert', 'Acteur', 'H', '1943-08-17', 'New York', 1, 231, 'http://www.google.fr/url?source=imglanding&ct=img&q=http://i2.cdnds.net/11/19/showbiz_robert_de_niro.jpg&sa=X&ei=2MJwVbqHDMeqU6bPgaAI&ved=0CAkQ8wc4Ng&usg=AFQjCNEzNLH-zyFstjoEahju3X1LFZnbQw'),
(2, 'Dean', 'James', 'Acteur', 'H', '1931-02-08', 'Indiana', 0, 231, 'http://www.google.fr/url?source=imglanding&ct=img&q=http://www.gatsbyonline.com/Users/3808/Images/jamesDeanHeyes.jpg&sa=X&ei=JbBxVdCyI8zbUeP8gWg&ved=0CAkQ8wc4GA&usg=AFQjCNEUZ1Y2ELCRV0vqtTyvaIL1MAplgA'),
(3, 'Clooney', 'George', 'Acteur', 'H', '1961-05-06', 'Kentucky', 1, 231, 'http://www.google.fr/url?source=imglanding&ct=img&q=http://lebazardestendances.com/wp-content/uploads/2015/05/george-clooney.jpg&sa=X&ei=7KJxVYWmLovuUvaHgKgL&ved=0CAkQ8wc&usg=AFQjCNF1Of2CyBy8Riyc4ZFgwtpqHxXbRw'),
(4, 'Delon', 'Alain', 'Acteur', 'H', '1935-11-08', 'Sceaux', 1, 75, 'http://www.google.fr/url?source=imglanding&ct=img&q=http://www.moviepilot.de/files/images/0486/9246/alain_delon.jpg&sa=X&ei=I6NxVdSNCMX2UtmkgfAB&ved=0CAkQ8wc&usg=AFQjCNFuX3Y5_yEnIIlpeDzmIQlEkZbmbQ'),
(5, 'Gable', 'Clark', 'Acteur', 'H', '1960-11-16', 'Ohio', 0, 231, 'http://www.google.fr/url?source=imglanding&ct=img&q=http://upload.wikimedia.org/wikipedia/commons/e/e0/Clark_Gable_1938.jpg&sa=X&ei=k6pxVcCvM8vaUZOfgKAP&ved=0CAkQ8wc4Gg&usg=AFQjCNHI6F3hlt-zNNADoIP5CAXqc6ROqw'),
(6, 'Reno', 'Jean', 'Acteur', 'H', '1948-07-30', 'Casablanca', 1, 75, 'http://www.google.fr/url?source=imglanding&ct=img&q=http://7.absolument.gratuit.free.fr/images/celebrites/jean_reno.jpg&sa=X&ei=7KNxVeukFcKqUaeEg-gG&ved=0CAkQ8wc4GA&usg=AFQjCNHSmeJUgPksVMrOConpaZBlXcXoMg'),
(7, 'Isabelle', 'Adjani', 'Actrice', 'F', '1955-06-27', 'Paris', 1, 75, 'http://www.google.fr/url?source=imglanding&ct=img&q=http://kpitalrisk.free.fr/images/stars/0/s_rg_fsa__isabelle_adjani_.jpg&sa=X&ei=PqpxVcOJHYT5UvvOg7gC&ved=0CAkQ8wc&usg=AFQjCNG26lWAycvnIg-2wXrzzAWfJ1alsg'),
(8, 'Brando', 'Marlon', 'Acteur', 'H', '1924-04-03', 'Nabraska', 0, 231, 'http://www.google.fr/url?source=imglanding&ct=img&q=http://static.cinemagia.ro/img/db/actor/00/20/01/marlon-brando-676961l.jpg&sa=X&ei=zKRxVcDkJsHmUuLrgegE&ved=0CAkQ8wc&usg=AFQjCNGHcj1-z9d3avcoerlVDa-hRJ8Xrw'),
(9, 'Stone', 'Sharon', 'Actrice', 'F', '1958-03-10', 'Pennsylvanie', 0, 231, 'http://www.google.fr/url?source=imglanding&ct=img&q=http://i-cms.journaldesfemmes.com/image_cms/300/2160945-le-brushing-aerien-de-sharon-stone.jpg&sa=X&ei=5aRxVamwEYjSU5zwg-gB&ved=0CAkQ8wc&usg=AFQjCNGBoqF7R5jDxsKljxi01HTKqAxJAA'),
(10, 'Douglas', 'Kirk', 'Acteur', 'H', '1916-12-09', 'New York', 0, 231, 'http://www.google.fr/url?source=imglanding&ct=img&q=http://upload.wikimedia.org/wikipedia/commons/1/1f/Kirk_and_Michael_Douglas_-1969.jpg&sa=X&ei=H6VxVf2LI8TvUqSSg3g&ved=0CAkQ8wc&usg=AFQjCNGOFZqwyjPRbM8G9EKjPBznq1fNaA'),
(11, 'Diaz', 'Cameron', 'Actrice', 'F', '1972-08-30', 'Californie', 1, 231, 'http://www.google.fr/url?source=imglanding&ct=img&q=http://www.glamour.com/images/fashion/2014/02/cameron-diaz-1-main.jpg&sa=X&ei=eqVxVaqfLcmiU4jrg9AO&ved=0CAkQ8wc&usg=AFQjCNHA-Ix1rrWo2h3keVr5vQVzOV5Kew'),
(12, 'Dujardin', 'Jean', 'Acteur', 'H', '1972-06-19', 'Rueil-Malmaison', 0, 75, 'http://www.google.fr/url?source=imglanding&ct=img&q=http://upload.wikimedia.org/wikipedia/commons/b/b8/Jean_Dujardin_2014.jpg&sa=X&ei=Z6pxVbKcJ4WmU6erg8AF&ved=0CAkQ8wc&usg=AFQjCNE1SsPN9HtzuHbLHfA-d6OuehEqHg'),
(13, 'Depardieu', 'Jean', 'Acteur', 'H', '1948-12-27', 'Châteauroux', 0, 75, 'http://www.google.fr/url?source=imglanding&ct=img&q=http://www.journaldugeek.com/wp-content/blogs.dir/1/files/2015/05/gerard-depardieu.jpg&sa=X&ei=q6ZxVcHoDMbuUvPqgGA&ved=0CAkQ8wc&usg=AFQjCNHuz5b8BEU5KXDmUQxF5Iqrd3Z9aA'),
(14, 'Cotillard', 'Marion', 'Actrice', 'F', '1975-09-30', 'Paris', 0, 75, 'http://www.google.fr/url?source=imglanding&ct=img&q=http://i.imgur.com/xDzQifg.jpg&sa=X&ei=D6txVaSCIcHaU5zPg9AB&ved=0CAkQ8wc46wE&usg=AFQjCNFBWZGlozNk-qIGHwcIF7sW0ToR3g'),
(16, 'Cassel', 'Vincent', 'Acteur', 'H', '1966-11-23', 'Paris', 0, 0, 'http://www.google.fr/url?source=imglanding&ct=img&q=http://s.plurielles.fr/mmdia/i/61/2/vincent-cassel-3579612vpjll.jpg?v=1&sa=X&ei=WKZxVdKVK8G0UNjUgdgC&ved=0CAkQ8wc&usg=AFQjCNEPl35DT_Y6Q5NOyWeqSX_UOuoyeA'),
(17, 'Balsam', 'Talia', 'Actrice', 'F', '1959-03-05', 'New-York', 1, 231, 'http://www.google.fr/url?source=imglanding&ct=img&q=https://pbs.twimg.com/profile_images/524038274835165184/XbgLFkmp.jpeg&sa=X&ei=GpaBVbLqKIHzUsSlgNgK&ved=0CAkQ8wc&usg=AFQjCNEqRcZEnQEc8caMMHK1Xx_Mg4x5mw'),
(18, 'Clooney', 'Amal ', 'Avocate', 'F', '1978-07-09', 'Beyrouth', 0, 242, 'http://www.google.fr/url?source=imglanding&ct=img&q=http://www.independent.co.uk/incoming/article9796832.ece/binary/original/amal-alamuddin.jpg&sa=X&ei=mZiBVfS6Gsn9UJrFgtgM&ved=0CAkQ8wc&usg=AFQjCNF-6iEpEVed5LkQDTLKARurbeKKwg'),
(19, 'Brad', 'Pitt', 'Acteur', 'H', '1963-12-18', 'Oklahoma', 0, 0, 'http://www.google.fr/url?source=imglanding&ct=img&q=http://assets-s3.usmagazine.com/uploads/assets/celebrities/238-brad-pitt/1250530894_brad_pitt_290x402.jpg&sa=X&ei=EpWCVZCVMYemU53NgKAI&ved=0CAkQ8wc&usg=AFQjCNHijuQCrwa_8l8qjSpcQhOy9D5NVQ'),
(20, 'Steven', 'Stoderbergh', 'Réalisateur', 'H', '1963-01-14', 'Atlanta', 0, 231, 'http://www.google.fr/url?source=imglanding&ct=img&q=http://cdn.bleedingcool.net/wp-content/uploads/2013/09/Steven-Soderbergh.jpg&sa=X&ei=HJiCVcvTC4u0UfjfgJgO&ved=0CAkQ8wc&usg=AFQjCNGIgtQ8k-YUs9xTKsPtCFSrx5y04w');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `alliance`
--
ALTER TABLE `alliance`
  ADD CONSTRAINT `Alliance_ibfk_1` FOREIGN KEY (`numVip1`) REFERENCES `vip` (`numVip`),
  ADD CONSTRAINT `Alliance_ibfk_2` FOREIGN KEY (`numVip2`) REFERENCES `vip` (`numVip`);

--
-- Contraintes pour la table `apparait`
--
ALTER TABLE `apparait`
  ADD CONSTRAINT `Apparait_ibfk_1` FOREIGN KEY (`numVip`) REFERENCES `vip` (`numVip`),
  ADD CONSTRAINT `Apparait_ibfk_2` FOREIGN KEY (`idPhoto`) REFERENCES `photo` (`idPhoto`);

--
-- Contraintes pour la table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`numGenre`) REFERENCES `genre` (`numGenre`);

--
-- Contraintes pour la table `jouer`
--
ALTER TABLE `jouer`
  ADD CONSTRAINT `Jouer_ibfk_1` FOREIGN KEY (`numVip`) REFERENCES `vip` (`numVip`),
  ADD CONSTRAINT `Jouer_ibfk_2` FOREIGN KEY (`numVisa`) REFERENCES `film` (`numVisa`);

--
-- Contraintes pour la table `realise`
--
ALTER TABLE `realise`
  ADD CONSTRAINT `Realise_fkb_numVip` FOREIGN KEY (`numVip`) REFERENCES `vip` (`numVip`),
  ADD CONSTRAINT `Realise_fkb_numVisa` FOREIGN KEY (`numVisa`) REFERENCES `film` (`numVisa`);

--
-- Contraintes pour la table `vip`
--
ALTER TABLE `vip`
  ADD CONSTRAINT `Vip_ibfk_1` FOREIGN KEY (`numPays`) REFERENCES `pays` (`numPays`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
