-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 05 2018 г., 15:29
-- Версия сервера: 10.1.31-MariaDB
-- Версия PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `uni2biz`
--

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `contact_id` int(11) NOT NULL,
  `contact_fname` varchar(100) NOT NULL,
  `contact_lname` varchar(100) NOT NULL,
  `contact_cphone` varchar(50) NOT NULL,
  `contact_hphone` varchar(50) NOT NULL,
  `contact_email` varchar(50) NOT NULL,
  `contact_address` varchar(100) NOT NULL,
  `contact_city` varchar(50) NOT NULL,
  `contact_country` varchar(50) NOT NULL,
  `contact_zipcode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`contact_id`, `contact_fname`, `contact_lname`, `contact_cphone`, `contact_hphone`, `contact_email`, `contact_address`, `contact_city`, `contact_country`, `contact_zipcode`) VALUES
(28, ' Jermaine', 'Cole', '910-705-8373', '910-564-3567', 'cole@i.ua', '2545 W Fayetteville', 'Fayetteville', 'USA', '28301'),
(29, 'Marshall', 'Mathers', '313-225-2255', '313-567-6733', 'mathers@yahoo.de', '20450 8Mile Road', 'Detroit', 'Austria', '48201'),
(30, 'Terrence', 'Thornton', '757-428-4770', '757-445-7554', 'terrence@me.com', '52455 Singleton Way', 'Virginia Beach', 'Germany', '23451'),
(31, 'John', 'Smith', '123-456-78-90', '234-56-789-01', 'john_smith@gmail.com', '234 Johnstreet', 'Johnville', 'Ukraine', '98765');

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id`, `name`) VALUES
(1, 'AFGHANISTAN'),
(2, 'ALBANIA'),
(3, 'ALGERIA'),
(4, 'AMERICAN SAMOA'),
(5, 'ANDORRA'),
(6, 'ANGOLA'),
(7, 'ANGUILLA'),
(8, 'ANTARCTICA'),
(9, 'ANTIGUA AND BARBUDA'),
(10, 'ARGENTINA'),
(11, 'ARMENIA'),
(12, 'ARUBA'),
(13, 'AUSTRALIA'),
(14, 'AUSTRIA'),
(15, 'AZERBAIJAN'),
(16, 'BAHAMAS'),
(17, 'BAHRAIN'),
(18, 'BANGLADESH'),
(19, 'BARBADOS'),
(20, 'BELARUS'),
(21, 'BELGIUM'),
(22, 'BELIZE'),
(23, 'BENIN'),
(24, 'BERMUDA'),
(25, 'BHUTAN'),
(26, 'BOLIVIA'),
(27, 'BOSNIA AND HERZEGOVINA'),
(28, 'BOTSWANA'),
(29, 'BOUVET ISLAND'),
(30, 'BRAZIL'),
(31, 'BRITISH INDIAN OCEAN TERRITORY'),
(32, 'BRUNEI DARUSSALAM'),
(33, 'BULGARIA'),
(34, 'BURKINA FASO'),
(35, 'BURUNDI'),
(36, 'CAMBODIA'),
(37, 'CAMEROON'),
(38, 'CANADA'),
(39, 'CAPE VERDE'),
(40, 'CAYMAN ISLANDS'),
(41, 'CENTRAL AFRICAN REPUBLIC'),
(42, 'CHAD'),
(43, 'CHILE'),
(44, 'CHINA'),
(45, 'CHRISTMAS ISLAND'),
(46, 'COCOS (KEELING) ISLANDS'),
(47, 'COLOMBIA'),
(48, 'COMOROS'),
(49, 'CONGO'),
(50, 'CONGO, THE DEMOCRATIC REPUBLIC OF THE'),
(51, 'COOK ISLANDS'),
(52, 'COSTA RICA'),
(53, 'COTE D\'IVOIRE'),
(54, 'CROATIA'),
(55, 'CUBA'),
(56, 'CYPRUS'),
(57, 'CZECH REPUBLIC'),
(58, 'DENMARK'),
(59, 'DJIBOUTI'),
(60, 'DOMINICA'),
(61, 'DOMINICAN REPUBLIC'),
(62, 'ECUADOR'),
(63, 'EGYPT'),
(64, 'EL SALVADOR'),
(65, 'EQUATORIAL GUINEA'),
(66, 'ERITREA'),
(67, 'ESTONIA'),
(68, 'ETHIOPIA'),
(69, 'FALKLAND ISLANDS (MALVINAS)'),
(70, 'FAROE ISLANDS'),
(71, 'FIJI'),
(72, 'FINLAND'),
(73, 'FRANCE'),
(74, 'FRENCH GUIANA'),
(75, 'FRENCH POLYNESIA'),
(76, 'FRENCH SOUTHERN TERRITORIES'),
(77, 'GABON'),
(78, 'GAMBIA'),
(79, 'GEORGIA'),
(80, 'GERMANY'),
(81, 'GHANA'),
(82, 'GIBRALTAR'),
(83, 'GREECE'),
(84, 'GREENLAND'),
(85, 'GRENADA'),
(86, 'GUADELOUPE'),
(87, 'GUAM'),
(88, 'GUATEMALA'),
(89, 'GUINEA'),
(90, 'GUINEA-BISSAU'),
(91, 'GUYANA'),
(92, 'HAITI'),
(93, 'HEARD ISLAND AND MCDONALD ISLANDS'),
(94, 'HOLY SEE (VATICAN CITY STATE)'),
(95, 'HONDURAS'),
(96, 'HONG KONG'),
(97, 'HUNGARY'),
(98, 'ICELAND'),
(99, 'INDIA'),
(100, 'INDONESIA'),
(101, 'IRAN, ISLAMIC REPUBLIC OF'),
(102, 'IRAQ'),
(103, 'IRELAND'),
(104, 'ISRAEL'),
(105, 'ITALY'),
(106, 'JAMAICA'),
(107, 'JAPAN'),
(108, 'JORDAN'),
(109, 'KAZAKHSTAN'),
(110, 'KENYA'),
(111, 'KIRIBATI'),
(112, 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF'),
(113, 'KOREA, REPUBLIC OF'),
(114, 'KUWAIT'),
(115, 'KYRGYZSTAN'),
(116, 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC'),
(117, 'LATVIA'),
(118, 'LEBANON'),
(119, 'LESOTHO'),
(120, 'LIBERIA'),
(121, 'LIBYAN ARAB JAMAHIRIYA'),
(122, 'LIECHTENSTEIN'),
(123, 'LITHUANIA'),
(124, 'LUXEMBOURG'),
(125, 'MACAO'),
(126, 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF'),
(127, 'MADAGASCAR'),
(128, 'MALAWI'),
(129, 'MALAYSIA'),
(130, 'MALDIVES'),
(131, 'MALI'),
(132, 'MALTA'),
(133, 'MARSHALL ISLANDS'),
(134, 'MARTINIQUE'),
(135, 'MAURITANIA'),
(136, 'MAURITIUS'),
(137, 'MAYOTTE'),
(138, 'MEXICO'),
(139, 'MICRONESIA, FEDERATED STATES OF'),
(140, 'MOLDOVA, REPUBLIC OF'),
(141, 'MONACO'),
(142, 'MONGOLIA'),
(143, 'MONTSERRAT'),
(144, 'MOROCCO'),
(145, 'MOZAMBIQUE'),
(146, 'MYANMAR'),
(147, 'NAMIBIA'),
(148, 'NAURU'),
(149, 'NEPAL'),
(150, 'NETHERLANDS'),
(151, 'NETHERLANDS ANTILLES'),
(152, 'NEW CALEDONIA'),
(153, 'NEW ZEALAND'),
(154, 'NICARAGUA'),
(155, 'NIGER'),
(156, 'NIGERIA'),
(157, 'NIUE'),
(158, 'NORFOLK ISLAND'),
(159, 'NORTHERN MARIANA ISLANDS'),
(160, 'NORWAY'),
(161, 'OMAN'),
(162, 'PAKISTAN'),
(163, 'PALAU'),
(164, 'PALESTINIAN TERRITORY, OCCUPIED'),
(165, 'PANAMA'),
(166, 'PAPUA NEW GUINEA'),
(167, 'PARAGUAY'),
(168, 'PERU'),
(169, 'PHILIPPINES'),
(170, 'PITCAIRN'),
(171, 'POLAND'),
(172, 'PORTUGAL'),
(173, 'PUERTO RICO'),
(174, 'QATAR'),
(175, 'REUNION'),
(176, 'ROMANIA'),
(177, 'RUSSIAN FEDERATION'),
(178, 'RWANDA'),
(179, 'SAINT HELENA'),
(180, 'SAINT KITTS AND NEVIS'),
(181, 'SAINT LUCIA'),
(182, 'SAINT PIERRE AND MIQUELON'),
(183, 'SAINT VINCENT AND THE GRENADINES'),
(184, 'SAMOA'),
(185, 'SAN MARINO'),
(186, 'SAO TOME AND PRINCIPE'),
(187, 'SAUDI ARABIA'),
(188, 'SENEGAL'),
(189, 'SERBIA AND MONTENEGRO'),
(190, 'SEYCHELLES'),
(191, 'SIERRA LEONE'),
(192, 'SINGAPORE'),
(193, 'SLOVAKIA'),
(194, 'SLOVENIA'),
(195, 'SOLOMON ISLANDS'),
(196, 'SOMALIA'),
(197, 'SOUTH AFRICA'),
(198, 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS'),
(199, 'SPAIN'),
(200, 'SRI LANKA'),
(201, 'SUDAN'),
(202, 'SURINAME'),
(203, 'SVALBARD AND JAN MAYEN'),
(204, 'SWAZILAND'),
(205, 'SWEDEN'),
(206, 'SWITZERLAND'),
(207, 'SYRIAN ARAB REPUBLIC'),
(208, 'TAIWAN, PROVINCE OF CHINA'),
(209, 'TAJIKISTAN'),
(210, 'TANZANIA, UNITED REPUBLIC OF'),
(211, 'THAILAND'),
(212, 'TIMOR-LESTE'),
(213, 'TOGO'),
(214, 'TOKELAU'),
(215, 'TONGA'),
(216, 'TRINIDAD AND TOBAGO'),
(217, 'TUNISIA'),
(218, 'TURKEY'),
(219, 'TURKMENISTAN'),
(220, 'TURKS AND CAICOS ISLANDS'),
(221, 'TUVALU'),
(222, 'UGANDA'),
(223, 'UKRAINE'),
(224, 'UNITED ARAB EMIRATES'),
(225, 'UNITED KINGDOM'),
(226, 'UNITED STATES'),
(227, 'UNITED STATES MINOR OUTLYING ISLANDS'),
(228, 'URUGUAY'),
(229, 'UZBEKISTAN'),
(230, 'VANUATU'),
(231, 'VENEZUELA'),
(232, 'VIET NAM'),
(233, 'VIRGIN ISLANDS, BRITISH'),
(234, 'VIRGIN ISLANDS, U.S.'),
(235, 'WALLIS AND FUTUNA'),
(236, 'WESTERN SAHARA'),
(237, 'YEMEN'),
(238, 'ZAMBIA'),
(239, 'ZIMBABWE');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin1', 'admin1'),
(2, 'admin2', 'admin2'),
(3, 'admin3', 'admin3');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contact_id`);

--
-- Индексы таблицы `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
