-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2021 at 02:11 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sablon_yii2`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('admin', '1', NULL),
('lucrator', '2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('admin', 1, 'Administrator', NULL, NULL, NULL, NULL),
('lucrator', 2, 'Lucrator', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id_log` int(11) NOT NULL,
  `id_user_log` int(11) NOT NULL,
  `action_log` varchar(50) NOT NULL,
  `tabela_log` varchar(50) NOT NULL,
  `id_model_log` int(11) NOT NULL,
  `changes_log` text DEFAULT NULL,
  `data_log` datetime NOT NULL,
  `ip_log` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1574770459),
('m130524_201442_init', 1574770466),
('m190124_110200_add_verification_token_column_to_user_table', 1574770467);

-- --------------------------------------------------------

--
-- Table structure for table `ordonatori`
--

CREATE TABLE `ordonatori` (
  `id` int(11) NOT NULL,
  `denumire` varchar(255) CHARACTER SET utf8 NOT NULL,
  `tip_ord` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordonatori`
--

INSERT INTO `ordonatori` (`id`, `denumire`, `tip_ord`) VALUES
(1, 'Ordonator Principal de Credite - Ministerul Afacerilor Interne', 1),
(2, 'Administra??ia Na??ional?? a Rezervelor de Stat ??i Probleme Speciale', 2),
(3, 'A.N.R.S.P.S.-Unitatea Teritoriala 95 Jibou Jude??ul S??laj', 3),
(4, 'A.N.R.S.P.S.-Unitatea Teritorial?? 130 C??ineni Jude??ul V??lcea', 3),
(5, 'A.N.R.S.P.S.-Unitatea Teritorial?? 135 D??e??ti Jude??ul V??lcea', 3),
(6, 'A.N.R.S.P.S.-Unitatea Teritorial?? 140 M??run??i??u Jude??ul Buz??u', 3),
(7, 'A.N.R.S.P.S.-Unitatea Teritorial?? 145 ????n????reni Jude??ul Gorj', 3),
(8, 'A.N.R.S.P.S.-Unitatea Teritorial?? 150 Buciumeni Jude??ul D??mbovi??a', 3),
(9, 'A.N.R.S.P.S.-Unitatea Teritorial?? 235 Gura Ocni??ei Jude??ul D??mbovi??a', 3),
(10, 'A.N.R.S.P.S.-Unitatea Teritorial?? 240 Codlea Jude??ul Bra??ov', 3),
(11, 'A.N.R.S.P.S.-Unitatea Teritorial?? 260 Porumbacu Jude??ul Sibiu', 3),
(12, 'A.N.R.S.P.S.-Unitatea Teritorial?? 265 Valea Seac?? Jude??ul Bac??u', 3),
(13, 'A.N.R.S.P.S.-Unitatea Teritorial?? 310 Barcea Jude??ul Gala??i', 3),
(14, 'A.N.R.S.P.S.-Unitatea Teritorial?? 315 Bucecea Jude??ul Boto??ani', 3),
(15, 'A.N.R.S.P.S.-Unitatea Teritorial?? 320 Dridu Jude??ul Ialomi??a', 3),
(16, 'A.N.R.S.P.S.-Unitatea Teritorial?? 325 Orbeni Jude??ul Bac??u', 3),
(17, 'A.N.R.S.P.S.-Unitatea Teritorial?? 330 Podoleni Jude??ul Neam??', 3),
(18, 'A.N.R.S.P.S.-Unitatea Teritorial?? 335 Ureche??ti Jude??ul Bac??u', 3),
(19, 'A.N.R.S.P.S.-Unitatea Teritorial?? 345 Sibiu Jude??ul Sibiu', 3),
(20, 'A.N.R.S.P.S.-Unitatea Teritorial?? 350 Popesti Leordeni Jude??ul Ilfov', 3),
(21, 'A.N.R.S.P.S.-Unitatea Teritorial?? 355 Caransebe?? Jude??ul Cara??-Severin', 3),
(22, 'A.N.R.S.P.S.-Unitatea Teritorial?? 360 Curtea de Arge?? Jude??ul Arge??', 3),
(23, 'A.N.R.S.P.S.-Unitatea Teritorial?? 370 Ione??ti Jude??ul V??lcea', 3),
(24, 'A.N.R.S.P.S.-Unitatea Teritorial?? 425 Bistri??a Jude??ul Neam??', 3),
(25, 'A.N.R.S.P.S.-Unitatea Teritorial?? 430 Sinca Veche Jude??ul Bra??ov', 3),
(26, 'A.N.R.S.P.S.-Unitatea Teritorial?? 440 Gura Vitioarei Jude??ul Prahova', 3),
(27, 'A.N.R.S.P.S.-Unitatea Teritorial?? 515 Bucure??ti', 3),
(28, 'Inspectoratul General al Poli??iei de Frontier??', 2),
(29, 'Inspectoratul Teritorial al Poli??iei de Frontier?? Oradea', 3),
(30, 'Inspectoratul Teritorial al Poli??iei de Frontier?? Giurgiu', 3),
(31, 'Inspectoratul Teritorial al Poli??iei de Frontier?? Ia??i', 3),
(32, 'Inspectoratul Teritorial al Poli??iei de Frontier?? Sighet', 3),
(33, 'Inspectoratul Teritorial al Poli??iei de Frontier?? Timi??oara', 3),
(34, 'Garda de Coast??', 3),
(35, '??coala de preg??tire a agen??ilor poli??iei de frontier?? Avram Iancu Oradea', 3),
(36, 'Baza de repara??ii nave Br??ila', 3),
(38, 'Inspectoratul General al Poli??iei Rom??ne  ', 2),
(39, 'Direc??ia General?? de Poli??ie a Municipiului Bucure??ti', 3),
(40, 'Inspectoratul de poli??ie jude??ean Alba', 3),
(41, 'Inspectoratul de poli??ie jude??ean Arad', 3),
(42, 'Inspectoratul de poli??ie jude??ean Arge??', 3),
(43, 'Inspectoratul de poli??ie jude??ean Bac??u', 3),
(44, 'Inspectoratul de poli??ie jude??ean Bihor', 3),
(45, 'Inspectoratul de poli??ie jude??ean Bistri??a N??s??ud', 3),
(46, 'Inspectoratul de poli??ie jude??ean Boto??ani', 3),
(47, 'Inspectoratul de poli??ie jude??ean Br??ila', 3),
(48, 'Inspectoratul de poli??ie jude??ean Bra??ov', 3),
(49, 'Inspectoratul de poli??ie jude??ean Buz??u', 3),
(50, 'Inspectoratul de poli??ie jude??ean C??l??ra??i', 3),
(51, 'Inspectoratul de poli??ie jude??ean Cara?? Severin', 3),
(52, 'Inspectoratul de poli??ie jude??ean Cluj', 3),
(53, 'Inspectoratul de poli??ie jude??ean Constan??a', 3),
(54, 'Inspectoratul de poli??ie jude??ean Covasna', 3),
(55, 'Inspectoratul de poli??ie jude??ean D??mbovi??a', 3),
(56, 'Inspectoratul de poli??ie jude??ean Dolj', 3),
(57, 'Inspectoratul de poli??ie jude??ean Gala??i', 3),
(58, 'Inspectoratul de poli??ie jude??ean Giurgiu', 3),
(59, 'Inspectoratul de poli??ie jude??ean Gorj', 3),
(60, 'Inspectoratul de poli??ie jude??ean Harghita', 3),
(61, 'Inspectoratul de poli??ie jude??ean Hunedoara', 3),
(62, 'Inspectoratul de poli??ie jude??ean Ialomi??a', 3),
(63, 'Inspectoratul de poli??ie jude??ean Ia??i', 3),
(64, 'Inspectoratul de poli??ie jude??ean Ilfov', 3),
(65, 'Inspectoratul de poli??ie jude??ean Maramure??', 3),
(66, 'Inspectoratul de poli??ie jude??ean Mehedin??i', 3),
(67, 'Inspectoratul de poli??ie jude??ean Mure??', 3),
(68, 'Inspectoratul de poli??ie jude??ean Neam??', 3),
(69, 'Inspectoratul de poli??ie jude??ean Olt', 3),
(70, 'Inspectoratul de poli??ie jude??ean Prahova', 3),
(71, 'Inspectoratul de poli??ie jude??ean S??laj', 3),
(72, 'Inspectoratul de poli??ie jude??ean Satu Mare', 3),
(73, 'Inspectoratul de poli??ie jude??ean Sibiu', 3),
(74, 'Inspectoratul de poli??ie jude??ean Suceava', 3),
(75, 'Inspectoratul de poli??ie jude??ean Teleorman', 3),
(76, 'Inspectoratul de poli??ie jude??ean Timi??', 3),
(77, 'Inspectoratul de poli??ie jude??ean Tulcea', 3),
(78, 'Inspectoratul de poli??ie jude??ean V??lcea', 3),
(79, 'Inspectoratul de poli??ie jude??ean Vaslui', 3),
(80, 'Inspectoratul de poli??ie jude??ean Vrancea', 3),
(81, '??coala de Agen??i de Poli??ie ???Vasile Lasc??r??? C??mpina', 3),
(82, '??coala de Agen??i de Poli??ie ???Septimiu Mure??an???  Cluj-Napoca ', 3),
(84, 'Centrul chinologic ???dr. Aurel Greblea??? Sibiu', 3),
(85, 'Inspectoratul General de Avia??ie al M.A.I.', 2),
(86, 'Unitatea Special?? de Avia??ie Bucure??ti', 3),
(87, 'Unitatea Special?? de Avia??ie Cluj-Napoca ', 3),
(88, 'Unitatea Special?? de Avia??ie Ia??i ', 3),
(89, 'Unitatea Special?? de Avia??ie Tulcea ', 3),
(90, 'Inspectoratul General pentru Situa??ii de Urgen????', 2),
(92, 'U.M. 0170 - Inspectoratul pentru Situa??ii de Urgen???? Unirea al jude??ului Alba', 3),
(93, 'U.M. 0173 - Inspectoratul pentru Situa??ii de Urgen???? Vasile Goldi?? al jude??ului Arad', 3),
(94, 'U.M. 0175 - Inspectoratul pentru Situa??ii de Urgen???? Cpt. Puic?? Nicolae al jude??ului Arge??', 3),
(95, 'U.M. 0551 - Inspectoratul pentru Situa??ii de Urgen???? Mr. Constantin Ene al jude??ului Bac??u', 3),
(96, 'U.M. 0176 - Inspectoratul pentru Situa??ii de Urgen???? Cri??ana al jude??ului Bihor', 3),
(97, 'U.M. 0177 - Inspectoratul pentru Situa??ii de Urgen???? Bistri??a al jude??ului Bistri??a-N??s??ud', 3),
(98, 'U.M. 0180 - Inspectoratul pentru Situa??ii de Urgen???? Nicolae Iorga al jude??ului Boto??ani', 3),
(99, 'U.M. 0416 - Inspectoratul pentru Situa??ii de Urgen???? ??ara B??rsei al jude??ului Bra??ov', 3),
(100, 'U.M. 0186 - Inspectoratul pentru Situa??ii de Urgen???? Dun??rea al jude??ului Br??ila', 3),
(101, 'U.M. 0196 - Inspectoratul pentru Situa??ii de Urgen???? Neron Lupa??cu al jude??ului Buz??u', 3),
(102, 'U.M. 0207 - Inspectoratul pentru Situa??ii de Urgen???? Semenic al jude??ului Cara??-Severin', 3),
(103, 'U.M. 0214 - Inspectoratul pentru Situa??ii de Urgen???? Barbu ??tirbei al jude??ului C??l??ra??i', 3),
(104, 'U.M. 0427 - Inspectoratul pentru Situa??ii de Urgen???? Avram Iancu al jude??ului Cluj', 3),
(105, 'U.M. 0434 - Inspectoratul pentru Situa??ii de Urgen???? Dobrogea al jude??ului Constan??a', 3),
(106, 'U.M. 0220 - Inspectoratul pentru Situa??ii de Urgen???? Mihai Viteazul al jude??ului Covasna', 3),
(107, 'U.M. 0448 - Inspectoratul pentru Situa??ii de Urgen???? Basarab I al jude??ului D??mbovi??a', 3),
(108, 'U.M. 0394 - Inspectoratul pentru Situa??ii de Urgen???? Oltenia al jude??ului Dolj', 3),
(109, 'U.M. 0403 - Inspectoratul pentru Situa??ii de Urgen???? Gral Ieremia Grigorescu al jud. Gala??i', 3),
(110, 'U.M. 0231 - Inspectoratul pentru Situa??ii de Urgen???? Vla??ca al jude??ului Giurgiu', 3),
(111, 'U.M. 0237 - Inspectoratul pentru Situa??ii de Urgen???? Lt.col. Dumitru Petrescu al jud. Gorj', 3),
(112, 'U.M. 0241 - Inspectoratul pentru Situa??ii de Urgen???? Oltul al jude??ului Harghita', 3),
(113, 'U.M. 0245 - Inspectoratul pentru Situa??ii de Urgen???? Iancu de Hunedoara al jud. Hunedoara', 3),
(114, 'U.M. 0247 - Inspectoratul pentru Situa??ii de Urgen???? Barbu Catargiu al jude??ului Ialomi??a', 3),
(115, 'U.M. 0253 - Inspectoratul pentru Situa??ii de Urgen???? Mihail Grigore Sturza al jude??ului Ia??i', 3),
(117, 'U.M. 0258 - Inspectoratul pentru Situa??ii de Urgen???? Ghe. Pop de B??se??ti al jud. Maramure??', 3),
(118, 'U.M. 0262 - Inspectoratul pentru Situa??ii de Urgen???? Drobeta al jude??ului Mehedin??i', 3),
(119, 'U.M. 0270 - Inspectoratul pentru Situa??ii de Urgen???? Horea al jude??ului Mure??', 3),
(120, 'U.M. 0274 - Inspectoratul pentru Situa??ii de Urgen???? Petrodava al jude??ului Neam??', 3),
(121, 'U.M. 0275 - Inspectoratul pentru Situa??ii de Urgen???? Matei Basarab al jude??ului Olt', 3),
(122, 'U.M. 0409 - Inspectoratul pentru Situa??ii de Urgen???? ??erban Cantacuzino al jud. Prahova', 3),
(123, 'U.M. 0281 - Inspectoratul pentru Situa??ii de Urgen???? Some?? al jude??ului Satu-Mare', 3),
(124, 'U.M. 0286 - Inspectoratul pentru Situa??ii de Urgen???? Porolissum al jude??ului S??laj', 3),
(125, 'U.M. 0290 - Inspectoratul pentru Situa??ii de Urgen???? Cpt. Dumitru Croitoru al jud. Sibiu', 3),
(126, 'U.M. 0321 - Inspectoratul pentru Situa??ii de Urgen???? Bucovina al jude??ului Suceava', 3),
(127, 'U.M. 0324 - Inspectoratul pentru Situa??ii de Urgen???? Al. Dimitrie Ghica al jud. Teleorman', 3),
(128, 'U.M. 0420 - Inspectoratul pentru Situa??ii de Urgen???? Banat al jude??ului Timi??', 3),
(129, 'U.M. 0337 - Inspectoratul pentru Situa??ii de Urgen???? Delta al jude??ului Tulcea', 3),
(130, 'U.M. 0345 - Inspectoratul pentru Situa??ii de Urgen???? Podul ??nalt al jude??ului Vaslui', 3),
(131, 'U.M. 0358 - Inspectoratul pentru Situa??ii de Urgen???? General Magheru al jude??ului V??lcea', 3),
(132, 'U.M. 0367 - Inspectoratul pentru Situa??ii de Urgen???? Anghel Saligny al jude??ului Vrancea', 3),
(134, 'U.M. 0490 - Centrul Na??ional de Preg??tire pentru Managementul Situa??iilor de Urgen???? Ciolpani', 3),
(135, 'U.M. 0443 - ??coala de Subofi??eri Pompieri ??i Protec??ie Civil?? Bolde??ti', 3),
(136, 'U.M. 0333 - Baza pentru Logistic?? a I.G.S.U.', 3),
(137, 'U.M. 0172 - Baza de Repara??ii a Tehnicii de Interven??ie Dragalina', 3),
(138, 'U.M. 0514 - Depozitul Rezerve Proprii 209 Mizil', 3),
(139, 'U.M. 0541 - Depozitul Rezerve Proprii 213 ??inca Veche', 3),
(140, 'U.M. 0543 - Depozitul Rezerve Proprii 230 Tecuci', 3),
(141, 'U.M. 0629 ??? Unitatea Special?? de Interven??ie ??n Situa??ii de Urgen????', 3),
(142, 'Inspectoratul General pentru Imigr??ri', 2),
(143, 'Centrul regional de cazare ??i proceduri pentru solicitan??ii de azil Timi??oara', 3),
(144, 'Centrul regional de cazare ??i proceduri pentru solicitan??ii de azil R??d??u??i', 3),
(147, 'U.M. 0251 Bucure??ti - Inspectoratul General al Jandarmeriei Rom??ne', 2),
(148, 'U.M. 0260 Bucure??ti - Baza de Administrare ??i Deservire a I.G.J.', 3),
(150, 'U.M. 0465 Bucure??ti - Brigada Special?? de Interven??ie a Jandarmeriei ', 3),
(152, 'U.M. 0575 Bucure??ti - Direc??ia General?? de Jandarmi a Municipiului Bucure??ti', 3),
(155, 'U.M. 0999 Bucure??ti - ??coala de Aplica??ie pentru Ofi??eri a Jandarmeriei Rom??ne Mihai Viteazul', 3),
(156, 'U.M. 0338 Alba Iulia - Inspectoratul de Jandarmi Jude??ean Alba', 3),
(157, 'U.M. 0437 Arad - Inspectoratul de Jandarmi Jude??ean Arad', 3),
(158, 'U.M. 0681 Pite??ti - Inspectoratul de Jandarmi Jude??ean Arge??', 3),
(159, 'U.M. 0836 Bac??u - Inspectoratul de Jandarmi Jude??ean Bac??u', 3),
(160, 'U.M. 0657 Oradea - Inspectoratul de Jandarmi Jude??ean Bihor', 3),
(161, 'U.M. 0565 Bistri??a  - Inspectoratul de Jandarmi Jude??ean Bistri??a N??s??ud', 3),
(162, 'U.M. 0901 Boto??ani  - Inspectoratul de Jandarmi Jude??ean Boto??ani', 3),
(163, 'U.M. 0391 Bra??ov  - Inspectoratul de Jandarmi Jude??ean Bra??ov', 3),
(164, 'U.M. 0242 Br??ila  - Inspectoratul de Jandarmi Jude??ean Br??ila', 3),
(165, 'U.M. 0838 Buz??u - Inspectoratul de Jandarmi Jude??ean Buz??u', 3),
(166, 'U.M. 0435 Re??i??a - Inspectoratul de Jandarmi Jude??ean Cara?? Severin', 3),
(167, 'U.M. 0256 C??l??ra??i  - Inspectoratul de Jandarmi Jude??ean C??l??ra??i', 3),
(168, 'U.M. 0701 Cluj-Napoca - Inspectoratul de Jandarmi Jude??ean Cluj-Napoca', 3),
(169, 'U.M. 0406 Constan??a  - Inspectoratul de Jandarmi Jude??ean Constan??a ', 3),
(170, 'U.M. 0495 Cernavod??  - Unitatea Special?? 72 Jandarmi Protec??ie Institu??ional??', 3),
(171, 'U.M. 0866 Sf??ntu Gheorghe - Inspectoratul de Jandarmi Jude??ean Covasna', 3),
(172, 'U.M. 0705 T??rgovi??te - Inspectoratul de Jandarmi Jude??ean D??mbovi??a', 3),
(173, 'U.M. 0654 Craiova - Inspectoratul de Jandarmi Jude??ean Dolj', 3),
(174, 'U.M. 0527 Galati - Inspectoratul de Jandarmi Jude??ean Gala??i', 3),
(175, 'U.M. 0329 Giurgiu - Inspectoratul de Jandarmi Jude??ean Giurgiu', 3),
(176, 'U.M. 0658 T??rgu Jiu - Inspectoratul de Jandarmi Jude??ean Gorj', 3),
(177, 'U.M. 0586 Miercurea Ciuc  - Inspectoratul de Jandarmi Jude??ean Harghita', 3),
(178, 'U.M. 0451 Deva - Inspectoratul de Jandarmi Jude??ean Hunedoara', 3),
(179, 'U.M. 0412 Slobozia  - Inspectoratul de Jandarmi Jude??ean Ialomi??a', 3),
(180, 'U.M. 0908 Ia??i - Inspectoratul de Jandarmi Jude??ean Ia??i ', 3),
(181, 'U.M. 0596 Bucure??ti - Inspectoratul de Jandarmi Jude??ean Ilfov', 3),
(182, 'U.M. 0716 Baia Mare - Inspectoratul de Jandarmi Jude??ean Maramure??', 3),
(183, 'U.M. 0524 Dr.Tr.Severin - Inspectoratul de Jandarmi Jude??ean Mehedin??i', 3),
(184, 'U.M. 0526 T??rgu Mure??  - Inspectoratul de Jandarmi Jude??ean Mure??', 3),
(185, 'U.M. 0944 Piatra Neam??  - Inspecoratul de Jandarmi Jude??ean Neam??', 3),
(186, 'U.M. 0746 Slatina - Inspectoratul de Jandarmi Jude??ean Olt ', 3),
(187, 'U.M. 0756 Ploie??ti - Inspectoratul de Jandarmi Jude??ean Prahova', 3),
(188, 'U.M. 0326 Zal??u - Inspectoratul de Jandarmi Jude??ean S??laj', 3),
(189, 'U.M. 0395 Satu Mare - Inspectoratul de Jandarmi Jude??ean Satu Mare', 3),
(190, 'U.M. 0815 Sibiu - Inspectoratul de Jandarmi Jude??ean Sibiu', 3),
(191, 'U.M. 0925 Suceava  - Inspectoratul de Jandarmi Jude??ean Suceava', 3),
(192, 'U.M. 0723 Alexandria - Inspectoratul de Jandarmi Jude??ean Teleorman', 3),
(193, 'U.M. 0520 Timi??oara - Inspectoratul de Jandarmi Jude??ean Timi??', 3),
(194, 'U.M. 0615 Tulcea  - Inspectoratul de Jandarmi Jude??ean Tulcea  ', 3),
(195, 'U.M. 0960 Vaslui  - Inspectoratul de Jandarmi Jude??ean Vaslui', 3),
(196, 'U.M. 0460 R??mnicu V??lcea - Inspectoratul de Jandarmi Jude??ean V??lcea', 3),
(197, 'U.M. 0965 Foc??ani  - Inspectoratul de Jandarmi Jude??ean Vrancea', 3),
(198, 'U.M. 0663 Dr??g????ani - ??coala Militara de Subofi??eri Jandarmi Gr.Al.Ghica Dr??g????ani', 3),
(199, 'U.M. 0854 F??lticeni - ??coala Militar?? de Subofi??eri  Jandarmi F??lticeni', 3),
(200, 'U.M. 0721 Gheorgheni  - Centrul de Perfectionare a Pregatirii Cadrelor Jandarmi Gheorgheni', 3),
(201, 'U.M. 0930 - Centrul de Perfec??ionare a Pregatirii Cadrelor Jandarmi Ochiuri', 3),
(202, 'U.M. 0849 - Centrul de Perfec??ionare a Preg??tirii Cadrelor Jandarmi Montani Sinaia', 3),
(203, 'Institu??ia Prefectului municipiului Bucure??ti', 3),
(204, 'Institu??ia Prefectului jude??ului Alba', 3),
(205, 'Institu??ia Prefectului jude??ului Arad', 3),
(206, 'Institu??ia Prefectului jude??ului Arge??', 3),
(207, 'Institu??ia Prefectului jude??ului Bac??u', 3),
(208, 'Institu??ia Prefectului jude??ului Bihor', 3),
(209, 'Institu??ia Prefectului jude??ului Bistri??a-N??s??ud', 3),
(210, 'Institu??ia Prefectului jude??ului Boto??ani', 3),
(211, 'Institu??ia Prefectului jude??ului Br??ila', 3),
(212, 'Institu??ia Prefectului jude??ului Bra??ov', 3),
(213, 'Institu??ia Prefectului jude??ului Buz??u', 3),
(214, 'Institu??ia Prefectului jude??ului C??l??ra??i', 3),
(215, 'Institu??ia Prefectului jude??ului Cara??-Severin', 3),
(216, 'Institu??ia Prefectului jude??ului Cluj', 3),
(217, 'Institu??ia Prefectului jude??ului Constan??a', 3),
(218, 'Institu??ia Prefectului jude??ului Covasna', 3),
(219, 'Institu??ia Prefectului jude??ului D??mbovi??a', 3),
(220, 'Institu??ia Prefectului jude??ului Dolj', 3),
(221, 'Institu??ia Prefectului jude??ului Gala??i', 3),
(222, 'Institu??ia Prefectului jude??ului Giurgiu', 3),
(223, 'Institu??ia Prefectului jude??ului Gorj', 3),
(224, 'Institu??ia Prefectului jude??ului Harghita', 3),
(225, 'Institu??ia Prefectului jude??ului Hunedoara', 3),
(226, 'Institu??ia Prefectului jude??ului Ia??i', 3),
(227, 'Institu??ia Prefectului jude??ului Ialomi??a', 3),
(228, 'Institu??ia Prefectului jude??ului Ilfov', 3),
(229, 'Institu??ia Prefectului jude??ului Maramure??', 3),
(230, 'Institu??ia Prefectului jude??ului Mehedin??i', 3),
(231, 'Institu??ia Prefectului jude??ului Mure??', 3),
(232, 'Institu??ia Prefectului jude??ului Neam??', 3),
(233, 'Institu??ia Prefectului jude??ului Olt', 3),
(234, 'Institu??ia Prefectului jude??ului Prahova', 3),
(235, 'Institu??ia Prefectului jude??ului Satu-Mare', 3),
(236, 'Institu??ia Prefectului jude??ului S??laj', 3),
(237, 'Institu??ia Prefectului jude??ului Sibiu', 3),
(238, 'Institu??ia Prefectului jude??ului Suceava', 3),
(239, 'Institu??ia Prefectului jude??ului Teleorman', 3),
(240, 'Institu??ia Prefectului jude??ului Timi??', 3),
(241, 'Institu??ia Prefectului jude??ului Tulcea', 3),
(242, 'Institu??ia Prefectului jude??ului V??lcea', 3),
(243, 'Institu??ia Prefectului jude??ului Vaslui', 3),
(244, 'Institu??ia Prefectului jude??ului Vrancea', 3),
(245, 'Academia de Poli??ie ???Alexandru Ioan Cuza??? Bucure??ti', 3),
(246, 'Agen??ia Na??ional?? Antidrog ', 3),
(247, 'Agen??ia Na??ional?? ??mpotriva Traficului de Persoane ', 3),
(248, 'Arhivele Na??ionale ', 3),
(249, 'Casa Sectorial?? de Pensii a M.A.I.', 3),
(250, 'Centrul de Formare Ini??ial?? ??i Continu?? al MAI', 3),
(251, 'Centrul Multifunc??ional de Preg??tire Schengen al MAi', 3),
(253, 'Clubul Sportiv ???Dinamo??? Bucure??ti ', 3),
(255, 'Direc??ia General?? Anticorup??ie', 3),
(257, 'DIREC??IA GENERAL?? DE PROTEC??IE INTERN??', 3),
(258, 'Direc??ia General?? de Pa??apoarte ', 3),
(259, 'Direc??ia pentru Eviden??a Persoanelor ??i Administrarea Bazelor de Date  - DEPABD', 3),
(260, 'Direc??ia Regim Permise de Conducere ??i ??nmatriculare a Vehiculelor ', 3),
(261, 'Institutul de Studii pentru Ordine Public?? ', 3),
(263, 'Spitalul Clinic de Urgen???? ???Avram Iancu??? Oradea', 3),
(264, 'Spitalul de Urgen???? al M.A.I. ???Prof. Dr. Dimitrie Gerota???  Bucure??ti', 3),
(265, 'Centrul Medical de Diagnostic ??i Tratament Ambulatoriu ???N. Kretzulescu??? Bucure??ti ', 3),
(266, 'Centrul Medical de Diagnostic ??i Tratament Ambulatoriu Ploie??ti', 3),
(267, 'Centrul Medical de Diagnostic ??i Tratament Ambulatoriu Oradea ', 3),
(306, 'Scoala de Formare Initiala si Continua a Personalului Politiei de Frontiera Iasi', 3),
(307, 'Inspectoratul pentru Situatii de Urgenta \"Dealul Spirii\" Bucuresti-Ilfov', 3),
(308, 'U.M. 0449 Craiova - Gruparea de Jandarmi Mobil?? Craiova', 3),
(311, 'U.M. 0903 Bac??u - Gruparea de Jandarmi Mobil?? Bac??u', 3),
(312, 'U.M. 0709 Tg.Mures - Gruparea de Jandarmi Mobila Mures', 3),
(313, 'U.M. 0827 Cluj - Gruparea de jandarmi Mobila Cluj', 3),
(314, 'U.M. 0805 Timisoara - Gruparea de Jandarmi Mobila Timis', 3),
(315, 'U.M. 0608 Constanta - Gruparea de Jandarmi Mobila Constanta', 3),
(316, 'U.M. 0599 Ploiesti - Gruparea de Jandarmi Mobila Ploiesti', 3),
(317, 'U.M. 0758 Brasov - Gruparea de Jandarmi Mobila Brasov', 3),
(319, '??coala de Perfec??ionare a Preg??tirii Personalului Poli??iei de Frontier?? Drobeta Turnu Severin ', 3),
(320, 'Centrul de Formare ??i Perfec??ionare a Poli??i??tilor \" Nicolae Golescu \" Slatina', 3),
(321, 'U.M. 0407 - Centrul Na??ional pentru Securitate la Incendii ??i Protec??ie Civil??', 3),
(344, 'DALI', 3),
(376, 'A.N.R.S.P.S. - Serviciul Administrativ', 3),
(377, 'I.G.P.F. - Serviciul Administrativ', 3),
(381, 'I.G.I. - Serviciul Administrativ', 3),
(382, 'I.G.A.V. - Biroul Administrativ', 3),
(383, 'I.G.P.R.-Serviciul Administrativ', 3),
(384, 'Aparat Central', 3),
(5264, 'CENTRUL REGIONAL DE PROCEDURI SI CAZARE A SOLICITANTILOR DE AZIL GALATI', 3),
(5265, 'Direc??ia Administrare pentru Comunica??ii ??i Tehnologia Informa??iei (DACTI)', 0),
(5266, 'Corpul de Control al Ministrului (CCM)', 2),
(5267, 'Direc??ia Audit Public Intern (DAPI)', 0),
(5269, 'Directia Generala pentru Comunicatii si Tehnologia Informatiei (DGCTI)', 0),
(5279, 'abc', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nume` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_ord` int(11) DEFAULT NULL,
  `telefon` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `nume`, `id_ord`, `telefon`, `email`, `status`, `auth_key`, `password_hash`, `password_reset_token`, `created_at`, `updated_at`, `verification_token`) VALUES
(1, 'admin', 'Administrator', 1, '123456', 'admin@gmail.com', 10, 'ggQZlVCXi8yUZuRuuRqEMv0vvsKhkl7n', '$2y$13$OIlR2fX8LOIXNHOWK4Y5wORgJ691iFhkQLxH6ibiD8V9e/Lhflu32', NULL, 1574773673, 1574773673, 'r0NBap5qB_wwxl9FWpCnU3SeYTRruohD_1574773673'),
(2, 'lucrator', 'Lucrator', 5265, '123456', 'lucrator@gmail.com', 10, 'ENMC7iPcspYiPULAFTIzorKj8n9gVHDF', '$2y$13$obErehoX7SPcU41t2QXsW.v6MsJ7pRPYisrC8NviFj6IwtqSuLOum', NULL, 1576143473, 1576143473, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `id_user_log` (`id_user_log`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `ordonatori`
--
ALTER TABLE `ordonatori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`),
  ADD KEY `id_ord` (`id_ord`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ordonatori`
--
ALTER TABLE `ordonatori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5280;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `log_ibfk_1` FOREIGN KEY (`id_user_log`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_ord`) REFERENCES `ordonatori` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
