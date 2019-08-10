-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2019 at 01:19 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 6, NULL, NULL),
(11, 18, '2019-06-19 08:38:38', '2019-06-19 08:38:38');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `key` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name_ar`, `name_en`, `country_id`, `key`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'سانت جوليا دي لوريا', 'Sant Julia de Loria', 1, '', NULL, NULL, NULL),
(2, 'أندورا لا فيلا', 'Andorra la Vella', 1, '', NULL, NULL, NULL),
(3, 'لا ماسانا', 'La Massana', 1, '', NULL, NULL, NULL),
(4, 'أوردينو', 'Ordino', 1, '', NULL, NULL, NULL),
(5, 'كانيلو', 'Canillo', 1, '', NULL, NULL, NULL),
(6, 'نزلوا', 'Encamp', 1, '', NULL, NULL, NULL),
(7, 'إسكالديس أنجوردني', 'Escaldes-Engordany', 1, '', NULL, NULL, NULL),
(8, 'الفجيرة', 'Fujairah', 2, '', NULL, NULL, NULL),
(9, 'أبو ظبي', 'Abu Dhabi', 2, '', NULL, NULL, NULL),
(10, 'دبي', 'Dubai', 2, '', NULL, NULL, NULL),
(11, 'رأس الخيمة', 'Ras Al Khaimah', 2, '', NULL, NULL, NULL),
(12, 'ام القيوين', 'Umm Al Quwain', 2, '', NULL, NULL, NULL),
(13, 'الشارقة', 'Sharjah', 2, '', NULL, NULL, NULL),
(14, 'عجمان', 'Ajman', 2, '', NULL, NULL, NULL),
(15, 'بكتيكا', 'Paktika', 3, '', NULL, NULL, NULL),
(16, 'فرح', 'Farah', 3, '', NULL, NULL, NULL),
(17, 'هلمند', 'Helmand', 3, '', NULL, NULL, NULL),
(18, 'قندز', 'Kondoz', 3, '', NULL, NULL, NULL),
(19, 'باميان', 'Bamian', 3, '', NULL, NULL, NULL),
(20, 'غور', 'Ghowr', 3, '', NULL, NULL, NULL),
(21, 'لغمان', 'Laghman', 3, '', NULL, NULL, NULL),
(23, 'غزنة', 'Ghazni', 3, '', NULL, NULL, NULL),
(24, 'ورداك', 'Vardak', 3, '', NULL, NULL, NULL),
(25, 'أوروزغان', 'Oruzgan', 3, '', NULL, NULL, NULL),
(26, 'زابول', 'Zabol', 3, '', NULL, NULL, NULL),
(27, 'بادغيس', 'Badghis', 3, '', NULL, NULL, NULL),
(28, 'بدخشان', 'Badakhshan', 3, '', NULL, NULL, NULL),
(29, 'فارياب', 'Faryab', 3, '', NULL, NULL, NULL),
(30, 'تخار', 'Takhar', 3, '', NULL, NULL, NULL),
(31, 'لوجار', 'Lowgar', 3, '', NULL, NULL, NULL),
(32, 'هرات', 'Herat', 3, '', NULL, NULL, NULL),
(33, 'دايكندي', 'Daykondi', 3, '', NULL, NULL, NULL),
(34, 'سار بول', 'Sar-e Pol', 3, '', NULL, NULL, NULL),
(35, 'بلخ', 'Balkh', 3, '', NULL, NULL, NULL),
(36, 'كابول', 'Kabol', 3, '', NULL, NULL, NULL),
(37, 'نيمروز', 'Nimruz', 3, '', NULL, NULL, NULL),
(38, 'قندهار', 'Kandahar', 3, '', NULL, NULL, NULL),
(39, 'خوست', 'Khowst', 3, '', NULL, NULL, NULL),
(41, 'كابيسا', 'Kapisa', 3, '', NULL, NULL, NULL),
(42, 'ننجرهار', 'Nangarhar', 3, '', NULL, NULL, NULL),
(43, 'سامانغان', 'Samangan', 3, '', NULL, NULL, NULL),
(44, 'بكتيا', 'Paktia', 3, '', NULL, NULL, NULL),
(45, 'بغلان', 'Baghlan', 3, '', NULL, NULL, NULL),
(46, 'جوزجان', 'Jowzjan', 3, '', NULL, NULL, NULL),
(47, 'كونار', 'Konar', 3, '', NULL, NULL, NULL),
(48, 'نورستان', 'Nurestan', 3, '', NULL, NULL, NULL),
(52, 'بانجشير', 'Panjshir', 3, '', NULL, NULL, NULL),
(53, 'القديس يوحنا', 'Saint John', 4, '', NULL, NULL, NULL),
(54, 'القديس بول', 'Saint Paul', 4, '', NULL, NULL, NULL),
(55, 'القديس جورج', 'Saint George', 4, '', NULL, NULL, NULL),
(56, 'القديس بطرس', 'Saint Peter', 4, '', NULL, NULL, NULL),
(57, 'القديس ماري', 'Saint Mary', 4, '', NULL, NULL, NULL),
(58, 'باربودا', 'Barbuda', 4, '', NULL, NULL, NULL),
(59, 'سانت فيليب', 'Saint Philip', 4, '', NULL, NULL, NULL),
(61, 'فلور', 'Vlore', 6, '', NULL, NULL, NULL),
(62, 'كورتشي', 'Korce', 6, '', NULL, NULL, NULL),
(63, 'شكودر', 'Shkoder', 6, '', NULL, NULL, NULL),
(64, 'دوريس', 'Durres', 6, '', NULL, NULL, NULL),
(65, 'الباسان', 'Elbasan', 6, '', NULL, NULL, NULL),
(66, 'كوكس', 'Kukes', 6, '', NULL, NULL, NULL),
(67, 'فيير', 'Fier', 6, '', NULL, NULL, NULL),
(68, 'بيرات', 'Berat', 6, '', NULL, NULL, NULL),
(69, 'جيروكاستر', 'Gjirokaster', 6, '', NULL, NULL, NULL),
(70, 'تيرانا', 'Tirane', 6, '', NULL, NULL, NULL),
(71, 'ليج', 'Lezhe', 6, '', NULL, NULL, NULL),
(72, 'ديبر', 'Diber', 6, '', NULL, NULL, NULL),
(73, 'Aragatsotn', 'Aragatsotn', 7, '', NULL, NULL, NULL),
(74, 'أرارات', 'Ararat', 7, '', NULL, NULL, NULL),
(75, 'كوتايك', 'Kotayk\'', 7, '', NULL, NULL, NULL),
(76, 'تافوش', 'Tavush', 7, '', NULL, NULL, NULL),
(77, 'سيونيك', 'Syunik\'', 7, '', NULL, NULL, NULL),
(78, 'Geghark\'unik \"', 'Geghark\'unik\'', 7, '', NULL, NULL, NULL),
(79, 'دزوتس دازور', 'Vayots\' Dzor', 7, '', NULL, NULL, NULL),
(80, 'Lorri', 'Lorri', 7, '', NULL, NULL, NULL),
(81, 'أرمافير', 'Armavir', 7, '', NULL, NULL, NULL),
(82, 'يريفان', 'Yerevan', 7, '', NULL, NULL, NULL),
(83, 'شيراك', 'Shirak', 7, '', NULL, NULL, NULL),
(85, 'بنغيلا', 'Benguela', 9, '', NULL, NULL, NULL),
(86, 'يجي', 'Uige', 9, '', NULL, NULL, NULL),
(87, 'بنغو', 'Bengo', 9, '', NULL, NULL, NULL),
(88, 'كوانزا نورتي', 'Cuanza Norte', 9, '', NULL, NULL, NULL),
(89, 'مالانج', 'Malanje', 9, '', NULL, NULL, NULL),
(90, 'كوانزا سول', 'Cuanza Sul', 9, '', NULL, NULL, NULL),
(91, 'هوامبو', 'Huambo', 9, '', NULL, NULL, NULL),
(92, 'موكسيكو', 'Moxico', 9, '', NULL, NULL, NULL),
(93, 'كواندو كوبانجو', 'Cuando Cubango', 9, '', NULL, NULL, NULL),
(94, 'بيي', 'Bie', 9, '', NULL, NULL, NULL),
(95, 'هويلا', 'Huila', 9, '', NULL, NULL, NULL),
(96, 'لوندا سول', 'Lunda Sul', 9, '', NULL, NULL, NULL),
(98, 'زائير', 'Zaire', 9, '', NULL, NULL, NULL),
(99, 'كونين', 'Cunene', 9, '', NULL, NULL, NULL),
(100, 'لوندا نورتي', 'Lunda Norte', 9, '', NULL, NULL, NULL),
(101, 'ناميبي', 'Namibe', 9, '', NULL, NULL, NULL),
(102, 'كابيندا', 'Cabinda', 9, '', NULL, NULL, NULL),
(103, 'بوينس آيرس', 'Buenos Aires', 10, '', NULL, NULL, NULL),
(104, 'قرطبة', 'Cordoba', 10, '', NULL, NULL, NULL),
(105, 'انتري ريوس', 'Entre Rios', 10, '', NULL, NULL, NULL),
(106, 'سالتا', 'Salta', 10, '', NULL, NULL, NULL),
(107, 'خوخوي', 'Jujuy', 10, '', NULL, NULL, NULL),
(108, 'لا بامبا', 'La Pampa', 10, '', NULL, NULL, NULL),
(109, 'مندوزا', 'Mendoza', 10, '', NULL, NULL, NULL),
(110, 'ميسيونيس', 'Misiones', 10, '', NULL, NULL, NULL),
(111, 'سانتا كروز', 'Santa Cruz', 10, '', NULL, NULL, NULL),
(112, 'سانتا في', 'Santa Fe', 10, '', NULL, NULL, NULL),
(113, 'توكومان', 'Tucuman', 10, '', NULL, NULL, NULL),
(114, 'كورينتس', 'Corrientes', 10, '', NULL, NULL, NULL),
(115, 'سان خوان', 'San Juan', 10, '', NULL, NULL, NULL),
(116, 'سانتياغو ديل إستيرو', 'Santiago del Estero', 10, '', NULL, NULL, NULL),
(117, 'كاتاماركا', 'Catamarca', 10, '', NULL, NULL, NULL),
(118, 'نيوكوين', 'Neuquen', 10, '', NULL, NULL, NULL),
(119, 'وفي مقاطعة الاتحادية', 'Distrito Federal', 10, '', NULL, NULL, NULL),
(120, 'لا ريوخا', 'La Rioja', 10, '', NULL, NULL, NULL),
(121, 'ريو نيغرو', 'Rio Negro', 10, '', NULL, NULL, NULL),
(122, 'شوبوت', 'Chubut', 10, '', NULL, NULL, NULL),
(123, 'سان لويس', 'San Luis', 10, '', NULL, NULL, NULL),
(124, 'تييرا ديل فويغو', 'Tierra del Fuego', 10, '', NULL, NULL, NULL),
(125, 'فورموزا', 'Formosa', 10, '', NULL, NULL, NULL),
(126, 'شاكو', 'Chaco', 10, '', NULL, NULL, NULL),
(127, 'Niederosterreich', 'Niederosterreich', 11, '', NULL, NULL, NULL),
(128, 'سالزبورغ', 'Salzburg', 11, '', NULL, NULL, NULL),
(129, 'Oberosterreich', 'Oberosterreich', 11, '', NULL, NULL, NULL),
(130, 'تيرول', 'Tirol', 11, '', NULL, NULL, NULL),
(131, 'كارنتين', 'Karnten', 11, '', NULL, NULL, NULL),
(132, 'STEIERMARK', 'Steiermark', 11, '', NULL, NULL, NULL),
(133, 'فورارلبرغ', 'Vorarlberg', 11, '', NULL, NULL, NULL),
(134, 'فيينا', 'Wien', 11, '', NULL, NULL, NULL),
(135, 'بورغنلاند', 'Burgenland', 11, '', NULL, NULL, NULL),
(136, 'نيو ساوث ويلز', 'New South Wales', 12, '', NULL, NULL, NULL),
(137, 'تسمانيا', 'Tasmania', 12, '', NULL, NULL, NULL),
(138, 'القسم الغربي من استراليا', 'Western Australia', 12, '', NULL, NULL, NULL),
(139, 'كوينزلاند', 'Queensland', 12, '', NULL, NULL, NULL),
(140, 'فيكتوريا', 'Victoria', 12, '', NULL, NULL, NULL),
(141, 'جنوب استراليا', 'South Australia', 12, '', NULL, NULL, NULL),
(142, 'الإقليم الشمالي', 'Northern Territory', 12, '', NULL, NULL, NULL),
(143, 'إقليم العاصمة الأسترالية', 'Australian Capital Territory', 12, '', NULL, NULL, NULL),
(146, 'نيفتكالا', 'Neftcala', 14, '', NULL, NULL, NULL),
(147, 'زانلار', 'Xanlar', 14, '', NULL, NULL, NULL),
(148, 'يفلاكس', 'Yevlax', 14, '', NULL, NULL, NULL),
(149, 'أجداس', 'Agdas', 14, '', NULL, NULL, NULL),
(150, 'سابيراباد', 'Sabirabad', 14, '', NULL, NULL, NULL),
(151, 'يارديملي', 'Yardimli', 14, '', NULL, NULL, NULL),
(152, 'Calilabad', 'Calilabad', 14, '', NULL, NULL, NULL),
(153, 'ساتلي', 'Saatli', 14, '', NULL, NULL, NULL),
(154, 'الساقي', 'Saki', 14, '', NULL, NULL, NULL),
(155, 'كوردامير', 'Kurdamir', 14, '', NULL, NULL, NULL),
(156, 'كازاكس', 'Qazax', 14, '', NULL, NULL, NULL),
(157, 'توفوز', 'Tovuz', 14, '', NULL, NULL, NULL),
(158, 'سامكير', 'Samkir', 14, '', NULL, NULL, NULL),
(159, 'أغدام', 'Agdam', 14, '', NULL, NULL, NULL),
(160, 'كوبادلي', 'Qubadli', 14, '', NULL, NULL, NULL),
(161, 'أوغوز', 'Oguz', 14, '', NULL, NULL, NULL),
(162, 'لاكين', 'Lacin', 14, '', NULL, NULL, NULL),
(163, 'كالباكار', 'Kalbacar', 14, '', NULL, NULL, NULL),
(164, 'Haciqabul', 'Haciqabul', 14, '', NULL, NULL, NULL),
(165, 'بيلاسوفار', 'Bilasuvar', 14, '', NULL, NULL, NULL),
(166, 'بالاكان', 'Balakan', 14, '', NULL, NULL, NULL),
(167, 'ناخيتشيفان', 'Naxcivan', 14, '', NULL, NULL, NULL),
(168, 'قابالا', 'Qabala', 14, '', NULL, NULL, NULL),
(169, 'أجكابادي', 'Agcabadi', 14, '', NULL, NULL, NULL),
(170, 'ساماكسي', 'Samaxi', 14, '', NULL, NULL, NULL),
(171, 'دافاسي', 'Davaci', 14, '', NULL, NULL, NULL),
(172, 'قباء', 'Quba', 14, '', NULL, NULL, NULL),
(173, 'كوسار', 'Qusar', 14, '', NULL, NULL, NULL),
(174, 'إيميسلي', 'Imisli', 14, '', NULL, NULL, NULL),
(175, 'أبسيرون', 'Abseron', 14, '', NULL, NULL, NULL),
(176, 'زاكماز', 'Xacmaz', 14, '', NULL, NULL, NULL),
(177, 'كابرايل', 'Cabrayil', 14, '', NULL, NULL, NULL),
(178, 'إيسمييلي', 'Ismayilli', 14, '', NULL, NULL, NULL),
(179, 'غورانبوي', 'Goranboy', 14, '', NULL, NULL, NULL),
(180, 'فضولي', 'Fuzuli', 14, '', NULL, NULL, NULL),
(181, 'باكي', 'Baki', 14, '', NULL, NULL, NULL),
(182, 'بيلاكان', 'Beylaqan', 14, '', NULL, NULL, NULL),
(183, 'داسكاسان', 'Daskasan', 14, '', NULL, NULL, NULL),
(184, 'ماسالي', 'Masalli', 14, '', NULL, NULL, NULL),
(185, 'زاكاتالا', 'Zaqatala', 14, '', NULL, NULL, NULL),
(186, 'نكران', 'Lankaran', 14, '', NULL, NULL, NULL),
(187, 'ليريك', 'Lerik', 14, '', NULL, NULL, NULL),
(188, 'علي بيرملي', 'Ali Bayramli', 14, '', NULL, NULL, NULL),
(189, 'QAX', 'Qax', 14, '', NULL, NULL, NULL),
(190, 'ساموكس', 'Samux', 14, '', NULL, NULL, NULL),
(191, 'زارداب', 'Zardab', 14, '', NULL, NULL, NULL),
(192, 'جاداباي', 'Gadabay', 14, '', NULL, NULL, NULL),
(193, 'أوكار', 'Ucar', 14, '', NULL, NULL, NULL),
(194, 'بردا', 'Barda', 14, '', NULL, NULL, NULL),
(195, 'سيازان', 'Siyazan', 14, '', NULL, NULL, NULL),
(196, 'كسوكافاند', 'Xocavand', 14, '', NULL, NULL, NULL),
(197, 'زانجيلان', 'Zangilan', 14, '', NULL, NULL, NULL),
(198, 'XIZI', 'Xizi', 14, '', NULL, NULL, NULL),
(199, 'يفلاكس', 'Yevlax', 14, '', NULL, NULL, NULL),
(200, 'AGSU', 'Agsu', 14, '', NULL, NULL, NULL),
(201, 'كوبستان', 'Qobustan', 14, '', NULL, NULL, NULL),
(202, 'جويكاي', 'Goycay', 14, '', NULL, NULL, NULL),
(203, 'أستارا', 'Astara', 14, '', NULL, NULL, NULL),
(204, 'كسوكالي', 'Xocali', 14, '', NULL, NULL, NULL),
(205, 'زانكاندي', 'Xankandi', 14, '', NULL, NULL, NULL),
(206, 'رواسب', 'Tartar', 14, '', NULL, NULL, NULL),
(207, 'أجستافا', 'Agstafa', 14, '', NULL, NULL, NULL),
(208, 'ساليان', 'Salyan', 14, '', NULL, NULL, NULL),
(209, 'سوسة', 'Susa', 14, '', NULL, NULL, NULL),
(210, 'غانكا', 'Ganca', 14, '', NULL, NULL, NULL),
(211, 'سامكيت', 'Sumqayit', 14, '', NULL, NULL, NULL),
(212, 'الساقي', 'Saki', 14, '', NULL, NULL, NULL),
(213, 'نفتالان', 'Naftalan', 14, '', NULL, NULL, NULL),
(214, 'نكران', 'Lankaran', 14, '', NULL, NULL, NULL),
(215, 'مينغاشفير', 'Mingacevir', 14, '', NULL, NULL, NULL),
(216, 'سوسة', 'Susa', 14, '', NULL, NULL, NULL),
(217, 'جمهورية صربسكا', 'Republika Srpska', 15, '', NULL, NULL, NULL),
(218, 'اتحاد البوسنة والهرسك', 'Federation of Bosnia and Herzegovina', 15, '', NULL, NULL, NULL),
(220, 'القديس يوسف', 'Saint Joseph', 16, '', NULL, NULL, NULL),
(221, 'سانت لوسي', 'Saint Lucy', 16, '', NULL, NULL, NULL),
(222, 'سانت توماس', 'Saint Thomas', 16, '', NULL, NULL, NULL),
(223, 'جيمس قديس', 'Saint James', 16, '', NULL, NULL, NULL),
(224, 'القديس يوحنا', 'Saint John', 16, '', NULL, NULL, NULL),
(225, 'القديس بطرس', 'Saint Peter', 16, '', NULL, NULL, NULL),
(226, 'كنيسة المسيح', 'Christ Church', 16, '', NULL, NULL, NULL),
(227, 'القديس جورج', 'Saint George', 16, '', NULL, NULL, NULL),
(228, 'القديس مايكل', 'Saint Michael', 16, '', NULL, NULL, NULL),
(229, 'القديس أندرو', 'Saint Andrew', 16, '', NULL, NULL, NULL),
(230, 'سانت فيليب', 'Saint Philip', 16, '', NULL, NULL, NULL),
(231, 'خولنا', 'Khulna', 17, '', NULL, NULL, NULL),
(232, 'راجشاهي', 'Rajshahi', 17, '', NULL, NULL, NULL),
(233, 'دكا', 'Dhaka', 17, '', NULL, NULL, NULL),
(235, 'باريسال', 'Barisal', 17, '', NULL, NULL, NULL),
(236, 'سيلهيت', 'Sylhet', 17, '', NULL, NULL, NULL),
(237, 'شيتاغونغ', 'Chittagong', 17, '', NULL, NULL, NULL),
(238, 'فلاندر الشرقية', 'Oost-Vlaanderen', 18, '', NULL, NULL, NULL),
(239, 'فلاندر الغربية', 'West-Vlaanderen', 18, '', NULL, NULL, NULL),
(241, 'ليمبورغ', 'Limburg', 18, '', NULL, NULL, NULL),
(242, 'أنتويرب', 'Antwerpen', 18, '', NULL, NULL, NULL),
(243, 'لوكسمبورغ', 'Luxembourg', 18, '', NULL, NULL, NULL),
(244, 'ليمبورغ', 'Hainaut', 18, '', NULL, NULL, NULL),
(245, 'مرتبط ب', 'Liege', 18, '', NULL, NULL, NULL),
(246, 'نامور', 'Namur', 18, '', NULL, NULL, NULL),
(247, 'بروكسل Hoofdstedelijk Gewest', 'Brussels Hoofdstedelijk Gewest', 18, '', NULL, NULL, NULL),
(248, 'فلامس برابانت', 'Vlaams-Brabant', 18, '', NULL, NULL, NULL),
(249, 'برابانت الوالون', 'Brabant Wallon', 18, '', NULL, NULL, NULL),
(251, 'موهون', 'Mouhoun', 19, '', NULL, NULL, NULL),
(252, 'بام', 'Bam', 19, '', NULL, NULL, NULL),
(257, 'تابوا', 'Tapoa', 19, '', NULL, NULL, NULL),
(258, 'سوم', 'Soum', 19, '', NULL, NULL, NULL),
(259, 'يرابا', 'Leraba', 19, '', NULL, NULL, NULL),
(260, 'نومبيل', 'Noumbiel', 19, '', NULL, NULL, NULL),
(262, 'جناجنا', 'Gnagna', 19, '', NULL, NULL, NULL),
(265, 'ياتينجا', 'Yatenga', 19, '', NULL, NULL, NULL),
(266, 'بانوا', 'Banwa', 19, '', NULL, NULL, NULL),
(267, 'بوني', 'Poni', 19, '', NULL, NULL, NULL),
(268, 'وروم', 'Loroum', 19, '', NULL, NULL, NULL),
(269, 'كوريتنجا', 'Kouritenga', 19, '', NULL, NULL, NULL),
(270, 'توي', 'Tuy', 19, '', NULL, NULL, NULL),
(271, 'كوسي', 'Kossi', 19, '', NULL, NULL, NULL),
(272, 'باسور', 'Passore', 19, '', NULL, NULL, NULL),
(273, 'كيندوجو', 'Kenedougou', 19, '', NULL, NULL, NULL),
(274, 'بالة', 'Bale', 19, '', NULL, NULL, NULL),
(275, 'بوغوريبا', 'Bougouriba', 19, '', NULL, NULL, NULL),
(276, 'هويت', 'Houet', 19, '', NULL, NULL, NULL),
(277, 'جورما', 'Gourma', 19, '', NULL, NULL, NULL),
(278, 'نامنتنجا', 'Namentenga', 19, '', NULL, NULL, NULL),
(279, 'سانماتينغا', 'Sanmatenga', 19, '', NULL, NULL, NULL),
(281, 'إيوبا', 'Ioba', 19, '', NULL, NULL, NULL),
(282, 'غانزورغو', 'Ganzourgou', 19, '', NULL, NULL, NULL),
(283, 'الناعوري', 'Naouri', 19, '', NULL, NULL, NULL),
(284, 'بولكيمد', 'Boulkiemde', 19, '', NULL, NULL, NULL),
(285, 'زوندويجو', 'Zoundweogo', 19, '', NULL, NULL, NULL),
(286, 'زوندوما', 'Zondoma', 19, '', NULL, NULL, NULL),
(289, 'Komoe', 'Komoe', 19, '', NULL, NULL, NULL),
(290, 'ياغا', 'Yagha', 19, '', NULL, NULL, NULL),
(291, 'كوموندجاري', 'Komondjari', 19, '', NULL, NULL, NULL),
(292, 'سورو', 'Sourou', 19, '', NULL, NULL, NULL),
(293, 'نايالا', 'Nayala', 19, '', NULL, NULL, NULL),
(294, 'سيسيلي', 'Sissili', 19, '', NULL, NULL, NULL),
(295, 'سانجوي', 'Sanguie', 19, '', NULL, NULL, NULL),
(296, 'أودالان', 'Oudalan', 19, '', NULL, NULL, NULL),
(297, 'كولبيلوجو', 'Koulpelogo', 19, '', NULL, NULL, NULL),
(298, 'زيرو', 'Ziro', 19, '', NULL, NULL, NULL),
(299, 'كورويجو', 'Kourweogo', 19, '', NULL, NULL, NULL),
(300, 'أوبريتنغا', 'Oubritenga', 19, '', NULL, NULL, NULL),
(301, 'سينو', 'Seno', 19, '', NULL, NULL, NULL),
(302, 'بازيجا', 'Bazega', 19, '', NULL, NULL, NULL),
(303, 'كاديوغو', 'Kadiogo', 19, '', NULL, NULL, NULL),
(304, 'كومبينغا', 'Kompienga', 19, '', NULL, NULL, NULL),
(305, 'بولغو', 'Boulgou', 19, '', NULL, NULL, NULL),
(306, 'لوفيتش', 'Lovech', 20, '', NULL, NULL, NULL),
(307, 'فارنا', 'Varna', 20, '', NULL, NULL, NULL),
(308, 'بورغاس', 'Burgas', 20, '', NULL, NULL, NULL),
(309, 'رازغراد', 'Razgrad', 20, '', NULL, NULL, NULL),
(310, 'بلوفديف', 'Plovdiv', 20, '', NULL, NULL, NULL),
(311, 'Khaskovo', 'Khaskovo', 20, '', NULL, NULL, NULL),
(312, 'SOFIYA', 'Sofiya', 20, '', NULL, NULL, NULL),
(313, 'سيليسترا', 'Silistra', 20, '', NULL, NULL, NULL),
(314, 'فيدين', 'Vidin', 20, '', NULL, NULL, NULL),
(315, 'مونتانا', 'Montana', 20, '', NULL, NULL, NULL),
(316, 'Mikhaylovgrad', 'Mikhaylovgrad', 20, '', NULL, NULL, NULL),
(317, 'جراد صوفيا', 'Grad Sofiya', 20, '', NULL, NULL, NULL),
(318, 'تارغوفيشته', 'Turgovishte', 20, '', NULL, NULL, NULL),
(319, 'Kurdzhali', 'Kurdzhali', 20, '', NULL, NULL, NULL),
(320, 'دوبريتش', 'Dobrich', 20, '', NULL, NULL, NULL),
(321, 'شومين', 'Shumen', 20, '', NULL, NULL, NULL),
(322, 'بلاغويفغارد', 'Blagoevgrad', 20, '', NULL, NULL, NULL),
(323, 'سموليان', 'Smolyan', 20, '', NULL, NULL, NULL),
(324, 'ستارا زاغورا', 'Stara Zagora', 20, '', NULL, NULL, NULL),
(325, 'بازارجيك', 'Pazardzhik', 20, '', NULL, NULL, NULL),
(326, 'حيلة', 'Ruse', 20, '', NULL, NULL, NULL),
(327, 'فراتسا', 'Vratsa', 20, '', NULL, NULL, NULL),
(328, 'بليفين', 'Pleven', 20, '', NULL, NULL, NULL),
(329, 'برنيك', 'Pernik', 20, '', NULL, NULL, NULL),
(330, 'كيوستينديل', 'Kyustendil', 20, '', NULL, NULL, NULL),
(331, 'يامبول', 'Yambol', 20, '', NULL, NULL, NULL),
(332, 'غابروفو', 'Gabrovo', 20, '', NULL, NULL, NULL),
(333, 'سليفن', 'Sliven', 20, '', NULL, NULL, NULL),
(334, 'فيليكو ترنوفو', 'Veliko Turnovo', 20, '', NULL, NULL, NULL),
(335, 'جد حفص', 'Jidd Hafs', 21, '', NULL, NULL, NULL),
(337, 'المنطقة الشمالية', 'Al Mintaqah ash Shamaliyah', 21, '', NULL, NULL, NULL),
(339, 'المنامة', 'Al Manamah', 21, '', NULL, NULL, NULL),
(340, 'سترة', 'Sitrah', 21, '', NULL, NULL, NULL),
(341, 'المنطقة الغربية', 'Al Mintaqah al Gharbiyah', 21, '', NULL, NULL, NULL),
(342, 'ولاية جزرور حوار', 'Mintaqat Juzur Hawar', 21, '', NULL, NULL, NULL),
(343, 'الحد', 'Al Hadd', 21, '', NULL, NULL, NULL),
(344, 'المنطقة الوسطى', 'Al Mintaqah al Wusta', 21, '', NULL, NULL, NULL),
(345, 'الرفاع', 'Ar Rifa', 21, '', NULL, NULL, NULL),
(346, 'مدينة', 'Madinat', 21, '', NULL, NULL, NULL),
(347, 'كاروزي', 'Karuzi', 22, '', NULL, NULL, NULL),
(348, 'رويجي', 'Ruyigi', 22, '', NULL, NULL, NULL),
(349, 'بوبانزا', 'Bubanza', 22, '', NULL, NULL, NULL),
(350, 'بوروري', 'Bururi', 22, '', NULL, NULL, NULL),
(351, 'ماكامبا', 'Makamba', 22, '', NULL, NULL, NULL),
(352, 'كاينزا', 'Kayanza', 22, '', NULL, NULL, NULL),
(354, 'روتانا', 'Rutana', 22, '', NULL, NULL, NULL),
(355, 'مويينغا', 'Muyinga', 22, '', NULL, NULL, NULL),
(356, 'سيبيتوكييه', 'Cibitoke', 22, '', NULL, NULL, NULL),
(357, 'غيتيغا', 'Gitega', 22, '', NULL, NULL, NULL),
(358, 'كانكوزا', 'Cankuzo', 22, '', NULL, NULL, NULL),
(359, 'بوجمبورا', 'Bujumbura', 22, '', NULL, NULL, NULL),
(360, 'نغوزي', 'Ngozi', 22, '', NULL, NULL, NULL),
(361, 'كيروندو', 'Kirundo', 22, '', NULL, NULL, NULL),
(362, 'هضبة', 'Plateau', 23, '', NULL, NULL, NULL),
(363, 'التلال', 'Collines', 23, '', NULL, NULL, NULL),
(366, 'أويمي', 'Oueme', 23, '', NULL, NULL, NULL),
(367, 'زو', 'Zou', 23, '', NULL, NULL, NULL),
(370, 'Atlanyique', 'Atlanyique', 23, '', NULL, NULL, NULL),
(371, 'بورغو', 'Borgou', 23, '', NULL, NULL, NULL),
(372, 'مونو', 'Mono', 23, '', NULL, NULL, NULL),
(374, 'كوفو', 'Kouffo', 23, '', NULL, NULL, NULL),
(375, 'دونجا', 'Donga', 23, '', NULL, NULL, NULL),
(376, 'ساحلي', 'Littoral', 23, '', NULL, NULL, NULL),
(377, 'أليبوري', 'Alibori', 23, '', NULL, NULL, NULL),
(378, 'أتاكورا', 'Atakora', 23, '', NULL, NULL, NULL),
(379, 'ديفونشاير', 'Devonshire', 24, '', NULL, NULL, NULL),
(380, 'باجيت', 'Paget', 24, '', NULL, NULL, NULL),
(381, 'سانت جورج', 'Saint George\'s', 24, '', NULL, NULL, NULL),
(382, 'الحدادون', 'Smiths', 24, '', NULL, NULL, NULL),
(383, 'هاميلتون', 'Hamilton', 24, '', NULL, NULL, NULL),
(384, 'وارويك', 'Warwick', 24, '', NULL, NULL, NULL),
(385, 'سانديز', 'Sandys', 24, '', NULL, NULL, NULL),
(386, 'القديس جورج', 'Saint George', 24, '', NULL, NULL, NULL),
(387, 'هاميلتون', 'Hamilton', 24, '', NULL, NULL, NULL),
(389, 'سانتا كروز', 'Santa Cruz', 26, '', NULL, NULL, NULL),
(390, 'باندو', 'Pando', 26, '', NULL, NULL, NULL),
(391, 'تاريخا', 'Tarija', 26, '', NULL, NULL, NULL),
(392, 'لاباز', 'La Paz', 26, '', NULL, NULL, NULL),
(393, 'أورورو', 'Oruro', 26, '', NULL, NULL, NULL),
(394, 'كوتشابامبا', 'Cochabamba', 26, '', NULL, NULL, NULL),
(395, 'بوتوسي', 'Potosi', 26, '', NULL, NULL, NULL),
(396, 'شوكيساكا', 'Chuquisaca', 26, '', NULL, NULL, NULL),
(397, 'البنى', 'El Beni', 26, '', NULL, NULL, NULL),
(398, 'سانتا كاتارينا', 'Santa Catarina', 27, '', NULL, NULL, NULL),
(399, 'ماتو جروسو دو سول', 'Mato Grosso do Sul', 27, '', NULL, NULL, NULL),
(400, 'ريو غراندي دو سول', 'Rio Grande do Sul', 27, '', NULL, NULL, NULL),
(401, 'اسبيريتو سانتو', 'Espirito Santo', 27, '', NULL, NULL, NULL),
(402, 'باهيا', 'Bahia', 27, '', NULL, NULL, NULL),
(403, 'روندونيا', 'Rondonia', 27, '', NULL, NULL, NULL),
(404, 'ميناس جيرايس', 'Minas Gerais', 27, '', NULL, NULL, NULL),
(405, 'بارايبا', 'Paraiba', 27, '', NULL, NULL, NULL),
(406, 'أمابا', 'Amapa', 27, '', NULL, NULL, NULL),
(407, 'أمازوناس', 'Amazonas', 27, '', NULL, NULL, NULL),
(408, 'الفقرة', 'Para', 27, '', NULL, NULL, NULL),
(409, 'سيارا', 'Ceara', 27, '', NULL, NULL, NULL),
(410, 'ريو دي جانيرو', 'Rio de Janeiro', 27, '', NULL, NULL, NULL),
(411, 'غوياس', 'Goias', 27, '', NULL, NULL, NULL),
(412, 'ساو باولو', 'Sao Paulo', 27, '', NULL, NULL, NULL),
(413, 'بارانا', 'Parana', 27, '', NULL, NULL, NULL),
(414, 'ريو غراندي دو نورتي', 'Rio Grande do Norte', 27, '', NULL, NULL, NULL),
(415, 'فدان', 'Acre', 27, '', NULL, NULL, NULL),
(416, 'بياوي', 'Piaui', 27, '', NULL, NULL, NULL),
(417, 'بيرنامبوكو', 'Pernambuco', 27, '', NULL, NULL, NULL),
(418, 'ماتو جروسو', 'Mato Grosso', 27, '', NULL, NULL, NULL),
(419, 'مارانهاو', 'Maranhao', 27, '', NULL, NULL, NULL),
(420, 'توكانتينز', 'Tocantins', 27, '', NULL, NULL, NULL),
(421, 'رورايما', 'Roraima', 27, '', NULL, NULL, NULL),
(422, 'ألاغواس', 'Alagoas', 27, '', NULL, NULL, NULL),
(423, 'سيرغيبي', 'Sergipe', 27, '', NULL, NULL, NULL),
(424, 'وفي مقاطعة الاتحادية', 'Distrito Federal', 27, '', NULL, NULL, NULL),
(425, 'Acklins and Crooked Islands', 'Acklins and Crooked Islands', 28, '', NULL, NULL, NULL),
(426, 'ماياجيوانا', 'Mayaguana', 28, '', NULL, NULL, NULL),
(427, 'جزيرة طويلة', 'Long Island', 28, '', NULL, NULL, NULL),
(428, 'بروفيدانس الجديدة', 'New Providence', 28, '', NULL, NULL, NULL),
(429, 'اكسوما', 'Exuma', 28, '', NULL, NULL, NULL),
(430, 'بيميني', 'Bimini', 28, '', NULL, NULL, NULL),
(431, 'ميناء الحاكم', 'Governor\'s Harbour', 28, '', NULL, NULL, NULL),
(432, 'سان سلفادور وروم كاي', 'San Salvador and Rum Cay', 28, '', NULL, NULL, NULL),
(433, 'فريش كريك', 'Fresh Creek', 28, '', NULL, NULL, NULL),
(434, 'جزيرة القط', 'Cat Island', 28, '', NULL, NULL, NULL),
(435, 'Nichollstown و جزر بيري', 'Nichollstown and Berry Islands', 28, '', NULL, NULL, NULL),
(436, 'كيمبس باي', 'Kemps Bay', 28, '', NULL, NULL, NULL),
(437, 'ميناء حر', 'Freeport', 28, '', NULL, NULL, NULL),
(438, 'صوت صخري', 'Rock Sound', 28, '', NULL, NULL, NULL),
(439, 'جزيرة الميناء', 'Harbour Island', 28, '', NULL, NULL, NULL),
(440, 'هاي روك', 'High Rock', 28, '', NULL, NULL, NULL),
(441, 'جرين تيرتل كاي', 'Green Turtle Cay', 28, '', NULL, NULL, NULL),
(442, 'مارش هاربر', 'Marsh Harbour', 28, '', NULL, NULL, NULL),
(443, 'جزيرة راكد', 'Ragged Island', 28, '', NULL, NULL, NULL),
(444, 'ساندي بوينت', 'Sandy Point', 28, '', NULL, NULL, NULL),
(445, 'من Inagua', 'Inagua', 28, '', NULL, NULL, NULL),
(446, 'وانجدي Phodrang', 'Wangdi Phodrang', 29, '', NULL, NULL, NULL),
(447, 'بارو', 'Paro', 29, '', NULL, NULL, NULL),
(448, 'داغا', 'Daga', 29, '', NULL, NULL, NULL),
(449, 'مونغار', 'Mongar', 29, '', NULL, NULL, NULL),
(450, 'Shemgang', 'Shemgang', 29, '', NULL, NULL, NULL),
(451, 'تيمفو', 'Thimphu', 29, '', NULL, NULL, NULL),
(452, 'Tashigang', 'Tashigang', 29, '', NULL, NULL, NULL),
(453, 'شيرانغ', 'Chirang', 29, '', NULL, NULL, NULL),
(454, 'Geylegphug', 'Geylegphug', 29, '', NULL, NULL, NULL),
(455, 'سامدروب', 'Samdrup', 29, '', NULL, NULL, NULL),
(456, 'بوم ثانج', 'Bumthang', 29, '', NULL, NULL, NULL),
(457, 'Samchi', 'Samchi', 29, '', NULL, NULL, NULL),
(458, 'Tongsa', 'Tongsa', 29, '', NULL, NULL, NULL),
(459, 'جوخا', 'Chhukha', 29, '', NULL, NULL, NULL),
(460, 'Pemagatsel', 'Pemagatsel', 29, '', NULL, NULL, NULL),
(461, 'ها', 'Ha', 29, '', NULL, NULL, NULL),
(462, 'بونخا', 'Punakha', 29, '', NULL, NULL, NULL),
(463, 'Lhuntshi', 'Lhuntshi', 29, '', NULL, NULL, NULL),
(464, 'وسط', 'Central', 30, '', NULL, NULL, NULL),
(465, 'الجنوب الشرقي', 'South-East', 30, '', NULL, NULL, NULL),
(466, 'شمال شرق', 'North-East', 30, '', NULL, NULL, NULL),
(467, 'الشمال الغربي', 'North-West', 30, '', NULL, NULL, NULL),
(468, 'غانزي', 'Ghanzi', 30, '', NULL, NULL, NULL),
(469, 'كوينينج', 'Kweneng', 30, '', NULL, NULL, NULL),
(470, 'كغالاغادي', 'Kgalagadi', 30, '', NULL, NULL, NULL),
(472, 'جنوبي', 'Southern', 30, '', NULL, NULL, NULL),
(473, 'كجاتلينج', 'Kgatleng', 30, '', NULL, NULL, NULL),
(474, 'Homyel\'skaya Voblasts \"', 'Homyel\'skaya Voblasts\'', 31, '', NULL, NULL, NULL),
(475, 'مينسك', 'Minsk', 31, '', NULL, NULL, NULL),
(476, 'Brestskaya Voblasts \"', 'Brestskaya Voblasts\'', 31, '', NULL, NULL, NULL),
(477, 'هيرودزينسكايا فوبلاست', 'Hrodzyenskaya Voblasts\'', 31, '', NULL, NULL, NULL),
(478, 'Mahilyowskaya Voblasts \"', 'Mahilyowskaya Voblasts\'', 31, '', NULL, NULL, NULL),
(479, 'Vitsyebskaya Voblasts \"', 'Vitsyebskaya Voblasts\'', 31, '', NULL, NULL, NULL),
(480, 'توليدو', 'Toledo', 32, '', NULL, NULL, NULL),
(481, 'كايو', 'Cayo', 32, '', NULL, NULL, NULL),
(482, 'ستان كريك', 'Stann Creek', 32, '', NULL, NULL, NULL),
(483, 'كوروزال', 'Corozal', 32, '', NULL, NULL, NULL),
(484, 'أورانج ووك', 'Orange Walk', 32, '', NULL, NULL, NULL),
(485, 'بليز', 'Belize', 32, '', NULL, NULL, NULL),
(500, 'خط الاستواء', 'Equateur', 35, '', NULL, NULL, NULL),
(501, 'الشرقية', 'Orientale', 35, '', NULL, NULL, NULL),
(503, 'شمال كيفو', 'Nord-Kivu', 35, '', NULL, NULL, NULL),
(505, 'مانيما', 'Maniema', 35, '', NULL, NULL, NULL),
(506, 'باندوندو', 'Bandundu', 35, '', NULL, NULL, NULL),
(508, 'كاتانغا', 'Katanga', 35, '', NULL, NULL, NULL),
(509, 'جنوب كيفو', 'Sud-Kivu', 35, '', NULL, NULL, NULL),
(510, 'الكونغو السفلى', 'Bas-Congo', 35, '', NULL, NULL, NULL),
(511, 'كاساي الشرقية', 'Kasai-Oriental', 35, '', NULL, NULL, NULL),
(512, 'كينشاسا', 'Kinshasa', 35, '', NULL, NULL, NULL),
(513, 'نانا مامبيري', 'Nana-Mambere', 36, '', NULL, NULL, NULL),
(514, 'أواكا', 'Ouaka', 36, '', NULL, NULL, NULL),
(515, 'كوتو العليا', 'Haute-Kotto', 36, '', NULL, NULL, NULL),
(516, 'سانغا مباري', 'Sangha-Mbaere', 36, '', NULL, NULL, NULL),
(517, 'بامينغي-بانغوران', 'Bamingui-Bangoran', 36, '', NULL, NULL, NULL),
(518, 'مبومو', 'Mbomou', 36, '', NULL, NULL, NULL),
(519, 'باس كوتو', 'Basse-Kotto', 36, '', NULL, NULL, NULL),
(520, 'كيمو', 'Kemo', 36, '', NULL, NULL, NULL),
(521, 'هوت مبومو', 'Haut-Mbomou', 36, '', NULL, NULL, NULL),
(522, 'أوهام بندي', 'Ouham-Pende', 36, '', NULL, NULL, NULL),
(523, 'أوهام', 'Ouham', 36, '', NULL, NULL, NULL),
(524, 'أومبلا مبوكي', 'Ombella-Mpoko', 36, '', NULL, NULL, NULL),
(525, 'كفيت-كويست', 'Cuvette-Ouest', 36, '', NULL, NULL, NULL),
(526, 'مامبري كادي', 'Mambere-Kadei', 36, '', NULL, NULL, NULL),
(527, 'وباي', 'Lobaye', 36, '', NULL, NULL, NULL),
(529, 'نانا غريبيزي', 'Nana-Grebizi', 36, '', NULL, NULL, NULL),
(530, 'بانغي', 'Bangui', 36, '', NULL, NULL, NULL),
(532, 'الهضاب', 'Plateaux', 37, '', NULL, NULL, NULL),
(533, 'حوض السباحة', 'Pool', 37, '', NULL, NULL, NULL),
(534, 'سانغا', 'Sangha', 37, '', NULL, NULL, NULL),
(535, 'يكومو', 'Lekoumou', 37, '', NULL, NULL, NULL),
(536, 'يكوالا', 'Likouala', 37, '', NULL, NULL, NULL),
(537, 'كويلو', 'Kouilou', 37, '', NULL, NULL, NULL),
(538, 'نياري', 'Niari', 37, '', NULL, NULL, NULL),
(539, 'بوينزا', 'Bouenza', 37, '', NULL, NULL, NULL),
(540, 'برازافيل', 'Brazzaville', 37, '', NULL, NULL, NULL),
(541, 'كفيت-كويست', 'Cuvette-Ouest', 37, '', NULL, NULL, NULL),
(542, 'كفيت', 'Cuvette', 37, '', NULL, NULL, NULL),
(543, 'ثورجو', 'Thurgau', 38, '', NULL, NULL, NULL),
(544, 'أرجاو', 'Aargau', 38, '', NULL, NULL, NULL),
(545, 'برن', 'Bern', 38, '', NULL, NULL, NULL),
(546, 'زيوريخ', 'Zurich', 38, '', NULL, NULL, NULL),
(547, 'فريبورغ', 'Fribourg', 38, '', NULL, NULL, NULL),
(548, 'Ausser-رودين', 'Ausser-Rhoden', 38, '', NULL, NULL, NULL),
(549, 'فاليه', 'Valais', 38, '', NULL, NULL, NULL),
(550, 'أوري', 'Uri', 38, '', NULL, NULL, NULL),
(551, 'غراوبوندن', 'Graubunden', 38, '', NULL, NULL, NULL),
(552, 'تيسان', 'Ticino', 38, '', NULL, NULL, NULL),
(553, 'لوزيرن', 'Luzern', 38, '', NULL, NULL, NULL),
(554, 'أوبوالدن', 'Obwalden', 38, '', NULL, NULL, NULL),
(555, 'سولوتورن', 'Solothurn', 38, '', NULL, NULL, NULL),
(556, 'بازل شتات', 'Basel-Stadt', 38, '', NULL, NULL, NULL),
(557, 'الداخلية-رودين', 'Inner-Rhoden', 38, '', NULL, NULL, NULL),
(558, 'زوغ', 'Zug', 38, '', NULL, NULL, NULL),
(559, 'فو', 'Vaud', 38, '', NULL, NULL, NULL),
(560, 'العصر الجوارسي أو الجوري', 'Jura', 38, '', NULL, NULL, NULL),
(561, 'كانتون ريف بازل', 'Basel-Landschaft', 38, '', NULL, NULL, NULL),
(562, 'شفيتس', 'Schwyz', 38, '', NULL, NULL, NULL),
(563, 'سانكت غالن', 'Sankt Gallen', 38, '', NULL, NULL, NULL),
(564, 'شافهاوزن', 'Schaffhausen', 38, '', NULL, NULL, NULL),
(565, 'جلاروس', 'Glarus', 38, '', NULL, NULL, NULL),
(566, 'جنيف', 'Geneve', 38, '', NULL, NULL, NULL),
(567, 'نيوشاتل', 'Neuchatel', 38, '', NULL, NULL, NULL),
(568, 'نيدوالدن', 'Nidwalden', 38, '', NULL, NULL, NULL),
(579, 'فالي دو بانداما', 'Vallee du Bandama', 39, '', NULL, NULL, NULL),
(581, 'N\'zi كومو', 'N\'zi-Comoe', 39, '', NULL, NULL, NULL),
(585, 'موين كومو', 'Moyen-Comoe', 39, '', NULL, NULL, NULL),
(587, 'اجونيه', 'Lagunes', 39, '', NULL, NULL, NULL),
(588, 'زانزان', 'Zanzan', 39, '', NULL, NULL, NULL),
(589, 'سود كومو', 'Sud-Comoe', 39, '', NULL, NULL, NULL),
(590, 'البحيرات', 'Lacs', 39, '', NULL, NULL, NULL),
(598, 'فورماجر', 'Fromager', 39, '', NULL, NULL, NULL),
(600, 'Agneby', 'Agneby', 39, '', NULL, NULL, NULL),
(601, 'بس ساساندرا', 'Bas-Sassandra', 39, '', NULL, NULL, NULL),
(603, 'مراهو', 'Marahoue', 39, '', NULL, NULL, NULL),
(608, 'بافنج', 'Bafing', 39, '', NULL, NULL, NULL),
(614, 'السافانا', 'Savanes', 39, '', NULL, NULL, NULL),
(619, 'سود بانداما', 'Sud-Bandama', 39, '', NULL, NULL, NULL),
(620, 'أوت ساساندرا', 'Haut-Sassandra', 39, '', NULL, NULL, NULL),
(621, 'موين كافالي', 'Moyen-Cavally', 39, '', NULL, NULL, NULL),
(622, 'ديكس - هويت مونتاجنيس', 'Dix-Huit Montagnes', 39, '', NULL, NULL, NULL),
(623, 'دانغيل', 'Denguele', 39, '', NULL, NULL, NULL),
(624, 'ورودوجو', 'Worodougou', 39, '', NULL, NULL, NULL),
(626, 'بيو بيو', 'Bio-Bio', 41, '', NULL, NULL, NULL),
(627, 'مولي', 'Maule', 41, '', NULL, NULL, NULL),
(628, 'لوس لاغوس', 'Los Lagos', 41, '', NULL, NULL, NULL),
(629, 'تاراباكا', 'Tarapaca', 41, '', NULL, NULL, NULL),
(630, 'فالبارايسو', 'Valparaiso', 41, '', NULL, NULL, NULL),
(631, 'أتاكاما', 'Atacama', 41, '', NULL, NULL, NULL),
(632, 'كوكيمبو', 'Coquimbo', 41, '', NULL, NULL, NULL),
(633, 'Libertador General Bernardo O\'Higgins', 'Libertador General Bernardo O\'Higgins', 41, '', NULL, NULL, NULL),
(634, 'أنتوفاغاستا', 'Antofagasta', 41, '', NULL, NULL, NULL),
(635, 'أراوكاريا', 'Araucania', 41, '', NULL, NULL, NULL),
(636, 'Aisen del General Carlos Ibanez del Campo', 'Aisen del General Carlos Ibanez del Campo', 41, '', NULL, NULL, NULL),
(637, 'منطقة متروبوليتانا', 'Region Metropolitana', 41, '', NULL, NULL, NULL),
(638, 'Magallanes y de la Antartica Chilena', 'Magallanes y de la Antartica Chilena', 41, '', NULL, NULL, NULL),
(639, 'EST', 'Est', 42, '', NULL, NULL, NULL),
(640, 'أداماوا', 'Adamaoua', 42, '', NULL, NULL, NULL),
(641, 'مركز', 'Centre', 42, '', NULL, NULL, NULL),
(642, 'سود', 'Sud', 42, '', NULL, NULL, NULL),
(643, 'الإقليم الشمالي الغربي', 'Nord-Ouest', 42, '', NULL, NULL, NULL),
(644, 'المتطرف نور', 'Extreme-Nord', 42, '', NULL, NULL, NULL),
(645, 'الإقليم الجنوبي الغربي', 'Sud-Ouest', 42, '', NULL, NULL, NULL),
(646, 'ساحلي', 'Littoral', 42, '', NULL, NULL, NULL),
(647, 'نورد', 'Nord', 42, '', NULL, NULL, NULL),
(648, 'كويست', 'Ouest', 42, '', NULL, NULL, NULL),
(649, 'سيتشوان', 'Sichuan', 43, '', NULL, NULL, NULL),
(650, 'شينجيانغ', 'Xinjiang', 43, '', NULL, NULL, NULL),
(651, 'ني المغول', 'Nei Mongol', 43, '', NULL, NULL, NULL),
(652, 'يونان', 'Yunnan', 43, '', NULL, NULL, NULL),
(653, 'قويتشو', 'Guizhou', 43, '', NULL, NULL, NULL),
(654, 'هيلونغجيانغ', 'Heilongjiang', 43, '', NULL, NULL, NULL),
(655, 'شاندونغ', 'Shandong', 43, '', NULL, NULL, NULL),
(656, 'لياونينغ', 'Liaoning', 43, '', NULL, NULL, NULL),
(657, 'شنشى', 'Shaanxi', 43, '', NULL, NULL, NULL),
(658, 'تشينغهاي', 'Qinghai', 43, '', NULL, NULL, NULL),
(659, 'قانسو', 'Gansu', 43, '', NULL, NULL, NULL),
(660, 'جيانغسو', 'Jiangsu', 43, '', NULL, NULL, NULL),
(661, 'فوجيان', 'Fujian', 43, '', NULL, NULL, NULL),
(662, 'هونان', 'Hunan', 43, '', NULL, NULL, NULL),
(663, 'جيانغشى', 'Jiangxi', 43, '', NULL, NULL, NULL),
(664, 'قوانغشى', 'Guangxi', 43, '', NULL, NULL, NULL),
(665, 'تشجيانغ', 'Zhejiang', 43, '', NULL, NULL, NULL),
(666, 'خبى', 'Hebei', 43, '', NULL, NULL, NULL),
(667, 'هوبى', 'Hubei', 43, '', NULL, NULL, NULL),
(668, 'انهوى', 'Anhui', 43, '', NULL, NULL, NULL),
(669, 'تيانجين', 'Tianjin', 43, '', NULL, NULL, NULL),
(670, 'هاينان', 'Hainan', 43, '', NULL, NULL, NULL),
(671, 'قوانغدونغ', 'Guangdong', 43, '', NULL, NULL, NULL),
(672, 'زيزانغ', 'Xizang', 43, '', NULL, NULL, NULL),
(673, 'جيلين', 'Jilin', 43, '', NULL, NULL, NULL),
(674, 'تشونغتشينغ', 'Chongqing', 43, '', NULL, NULL, NULL),
(675, 'بكين', 'Beijing', 43, '', NULL, NULL, NULL),
(676, 'شانشى', 'Shanxi', 43, '', NULL, NULL, NULL),
(677, 'شنغهاي', 'Shanghai', 43, '', NULL, NULL, NULL),
(678, 'خنان', 'Henan', 43, '', NULL, NULL, NULL),
(679, 'نينغشيا', 'Ningxia', 43, '', NULL, NULL, NULL),
(680, 'كونديناماركا', 'Cundinamarca', 44, '', NULL, NULL, NULL),
(681, 'نورتي دي سانتاندر', 'Norte de Santander', 44, '', NULL, NULL, NULL),
(682, 'نارينو', 'Narino', 44, '', NULL, NULL, NULL),
(684, 'ريزارالدا', 'Risaralda', 44, '', NULL, NULL, NULL),
(685, 'أنتيوكيا', 'Antioquia', 44, '', NULL, NULL, NULL),
(686, 'أمازوناس', 'Amazonas', 44, '', NULL, NULL, NULL),
(687, 'لا غواخيرا', 'La Guajira', 44, '', NULL, NULL, NULL),
(688, 'شوكو', 'Choco', 44, '', NULL, NULL, NULL),
(689, 'كاوكا', 'Cauca', 44, '', NULL, NULL, NULL),
(690, 'فالي ديل كاوكا', 'Valle del Cauca', 44, '', NULL, NULL, NULL),
(691, 'اروكا', 'Arauca', 44, '', NULL, NULL, NULL),
(692, 'ميتا', 'Meta', 44, '', NULL, NULL, NULL),
(693, 'كاكويتا', 'Caqueta', 44, '', NULL, NULL, NULL),
(694, 'كازاناري', 'Casanare', 44, '', NULL, NULL, NULL),
(695, 'فاوبيس', 'Vaupes', 44, '', NULL, NULL, NULL),
(696, 'توليما', 'Tolima', 44, '', NULL, NULL, NULL),
(697, 'هويلا', 'Huila', 44, '', NULL, NULL, NULL),
(699, 'اتلانتيكو', 'Atlantico', 44, '', NULL, NULL, NULL),
(700, 'قرطبة', 'Cordoba', 44, '', NULL, NULL, NULL),
(701, 'سانتاندر', 'Santander', 44, '', NULL, NULL, NULL),
(702, 'سيزار', 'Cesar', 44, '', NULL, NULL, NULL),
(703, 'سوكري', 'Sucre', 44, '', NULL, NULL, NULL),
(705, 'بوتومايو', 'Putumayo', 44, '', NULL, NULL, NULL),
(707, 'غوابياري', 'Guaviare', 44, '', NULL, NULL, NULL),
(708, 'San Andres y Providencia', 'San Andres y Providencia', 44, '', NULL, NULL, NULL),
(709, 'فيتشادا', 'Vichada', 44, '', NULL, NULL, NULL),
(710, 'كوينديو', 'Quindio', 44, '', NULL, NULL, NULL),
(711, 'غواينيا', 'Guainia', 44, '', NULL, NULL, NULL),
(712, 'Distrito Especial', 'Distrito Especial', 44, '', NULL, NULL, NULL),
(713, 'غواناكاست', 'Guanacaste', 45, '', NULL, NULL, NULL),
(714, 'ليمون', 'Limon', 45, '', NULL, NULL, NULL),
(715, 'بونتاريناس', 'Puntarenas', 45, '', NULL, NULL, NULL),
(716, 'ألاخويلا', 'Alajuela', 45, '', NULL, NULL, NULL),
(717, 'هيريديا', 'Heredia', 45, '', NULL, NULL, NULL),
(718, 'سان خوسيه', 'San Jose', 45, '', NULL, NULL, NULL),
(719, 'قرطاج', 'Cartago', 45, '', NULL, NULL, NULL),
(720, 'سيينفويغوس', 'Cienfuegos', 46, '', NULL, NULL, NULL),
(721, 'لا هافانا', 'La Habana', 46, '', NULL, NULL, NULL),
(722, 'سانتياغو دي كوبا', 'Santiago de Cuba', 46, '', NULL, NULL, NULL),
(723, 'كاماغواي', 'Camaguey', 46, '', NULL, NULL, NULL),
(724, 'سيوداد دي لا هافانا', 'Ciudad de la Habana', 46, '', NULL, NULL, NULL),
(725, 'فيلا كلارا', 'Villa Clara', 46, '', NULL, NULL, NULL),
(726, 'بينار ديل ريو', 'Pinar del Rio', 46, '', NULL, NULL, NULL),
(727, 'ماتانزاس', 'Matanzas', 46, '', NULL, NULL, NULL),
(728, 'غوانتانامو', 'Guantanamo', 46, '', NULL, NULL, NULL),
(729, 'لاس توناس', 'Las Tunas', 46, '', NULL, NULL, NULL),
(730, 'سييغو دي أفيلا', 'Ciego de Avila', 46, '', NULL, NULL, NULL),
(731, 'سانكتي سبيريتوس', 'Sancti Spiritus', 46, '', NULL, NULL, NULL),
(732, 'هولغوين', 'Holguin', 46, '', NULL, NULL, NULL),
(733, 'غرانما', 'Granma', 46, '', NULL, NULL, NULL),
(734, 'جزيرة دي لا جوفينتود', 'Isla de la Juventud', 46, '', NULL, NULL, NULL),
(735, 'ساو دومينغوس', 'Sao Domingos', 47, '', NULL, NULL, NULL),
(738, 'ليماسول', 'Limassol', 49, '', NULL, NULL, NULL),
(739, 'نيقوسيا', 'Nicosia', 49, '', NULL, NULL, NULL),
(740, 'بافوس', 'Paphos', 49, '', NULL, NULL, NULL),
(741, 'فاماغوستا', 'Famagusta', 49, '', NULL, NULL, NULL),
(742, 'لارنكا', 'Larnaca', 49, '', NULL, NULL, NULL),
(743, 'كيرينيا', 'Kyrenia', 49, '', NULL, NULL, NULL),
(744, 'كارلوفارسكي كراج', 'Karlovarsky kraj', 50, '', NULL, NULL, NULL),
(745, 'بردوبيكي كراج', 'Pardubicky kraj', 50, '', NULL, NULL, NULL),
(747, 'Jihomoravsky كراج', 'Jihomoravsky kraj', 50, '', NULL, NULL, NULL),
(748, 'Jihocesky kraj', 'Jihocesky kraj', 50, '', NULL, NULL, NULL),
(749, 'أولوموكي كراج', 'Olomoucky kraj', 50, '', NULL, NULL, NULL),
(750, 'Moravskoslezsky كراج', 'Moravskoslezsky kraj', 50, '', NULL, NULL, NULL),
(752, 'Kralovehradecky كراج', 'Kralovehradecky kraj', 50, '', NULL, NULL, NULL),
(753, 'أوستيكي كراج', 'Ustecky kraj', 50, '', NULL, NULL, NULL),
(754, 'Stredocesky كراج', 'Stredocesky kraj', 50, '', NULL, NULL, NULL),
(755, 'فيسوسينا', 'Vysocina', 50, '', NULL, NULL, NULL),
(756, 'Plzensky كراج', 'Plzensky kraj', 50, '', NULL, NULL, NULL),
(760, 'زلينسكي كراج', 'Zlinsky kraj', 50, '', NULL, NULL, NULL),
(761, 'هلفني ميستو براها', 'Hlavni mesto Praha', 50, '', NULL, NULL, NULL),
(763, 'Liberecky كراج', 'Liberecky kraj', 50, '', NULL, NULL, NULL),
(773, 'نوردراين فيستفالن', 'Nordrhein-Westfalen', 51, '', NULL, NULL, NULL),
(774, 'بادن فورتمبيرغ', 'Baden-Wurttemberg', 51, '', NULL, NULL, NULL),
(775, 'بايرن ميونيخ', 'Bayern', 51, '', NULL, NULL, NULL),
(776, 'راينلاند-بفالز', 'Rheinland-Pfalz', 51, '', NULL, NULL, NULL),
(777, 'Niedersachsen', 'Niedersachsen', 51, '', NULL, NULL, NULL),
(778, 'شليسفيغ هولشتاين', 'Schleswig-Holstein', 51, '', NULL, NULL, NULL),
(779, 'براندنبورغ', 'Brandenburg', 51, '', NULL, NULL, NULL),
(780, 'سكسونيا أنهالت', 'Sachsen-Anhalt', 51, '', NULL, NULL, NULL),
(781, 'ساكسن', 'Sachsen', 51, '', NULL, NULL, NULL),
(782, 'THÜRINGEN', 'Thuringen', 51, '', NULL, NULL, NULL),
(783, 'هيسن', 'Hessen', 51, '', NULL, NULL, NULL),
(784, 'مكلنبورغ-فوربومرن', 'Mecklenburg-Vorpommern', 51, '', NULL, NULL, NULL),
(785, 'هامبورغ', 'Hamburg', 51, '', NULL, NULL, NULL),
(786, 'البرلينية', 'Berlin', 51, '', NULL, NULL, NULL),
(787, 'سارلاند', 'Saarland', 51, '', NULL, NULL, NULL),
(788, 'بريمن', 'Bremen', 51, '', NULL, NULL, NULL),
(789, 'علي صبيح', 'Ali Sabieh', 52, '', NULL, NULL, NULL),
(790, 'تاجورا', 'Tadjoura', 52, '', NULL, NULL, NULL),
(792, 'أوبوك', 'Obock', 52, '', NULL, NULL, NULL),
(794, 'أرتا', 'Arta', 52, '', NULL, NULL, NULL),
(795, 'دخيل', 'Dikhil', 52, '', NULL, NULL, NULL),
(796, 'سيدانمارك', 'Syddanmark', 53, '', NULL, NULL, NULL),
(797, 'ميتجيلاند', 'Midtjylland', 53, '', NULL, NULL, NULL),
(798, 'نوردلاند', 'Nordjylland', 53, '', NULL, NULL, NULL),
(799, 'Sjelland', 'Sjelland', 53, '', NULL, NULL, NULL),
(800, 'هوفدستادين', 'Hovedstaden', 53, '', NULL, NULL, NULL),
(801, 'القديس أندرو', 'Saint Andrew', 54, '', NULL, NULL, NULL),
(802, 'القديس داود', 'Saint David', 54, '', NULL, NULL, NULL),
(803, 'القديس يوسف', 'Saint Joseph', 54, '', NULL, NULL, NULL),
(804, 'القديس جورج', 'Saint George', 54, '', NULL, NULL, NULL),
(805, 'سانت باتريك', 'Saint Patrick', 54, '', NULL, NULL, NULL),
(806, 'القديس بطرس', 'Saint Peter', 54, '', NULL, NULL, NULL),
(807, 'القديس يوحنا', 'Saint John', 54, '', NULL, NULL, NULL),
(808, 'سان مارك', 'Saint Mark', 54, '', NULL, NULL, NULL),
(809, 'القديس بول', 'Saint Paul', 54, '', NULL, NULL, NULL),
(810, 'القديس لوقا', 'Saint Luke', 54, '', NULL, NULL, NULL),
(811, 'سانشيز راميريز', 'Sanchez Ramirez', 55, '', NULL, NULL, NULL),
(812, 'إسبايلات', 'Espaillat', 55, '', NULL, NULL, NULL),
(813, 'دوارتي', 'Duarte', 55, '', NULL, NULL, NULL),
(814, 'سمانا', 'Samana', 55, '', NULL, NULL, NULL),
(815, 'ماريا ترينيداد سانشيز', 'Maria Trinidad Sanchez', 55, '', NULL, NULL, NULL),
(816, 'لا رومانا', 'La Romana', 55, '', NULL, NULL, NULL),
(817, 'ازوا', 'Azua', 55, '', NULL, NULL, NULL),
(818, 'سان كريستوبال', 'San Cristobal', 55, '', NULL, NULL, NULL),
(819, 'الصيبو', 'El Seibo', 55, '', NULL, NULL, NULL),
(820, 'مونت بلاتا', 'Monte Plata', 55, '', NULL, NULL, NULL),
(821, 'Distrito Nacional', 'Distrito Nacional', 55, '', NULL, NULL, NULL),
(822, 'إلياس بينا', 'Elias Pina', 55, '', NULL, NULL, NULL),
(823, 'سانتياغو', 'Santiago', 55, '', NULL, NULL, NULL),
(824, 'سانتياغو رودريجيز', 'Santiago Rodriguez', 55, '', NULL, NULL, NULL),
(825, 'بيرافيا', 'Peravia', 55, '', NULL, NULL, NULL),
(826, 'مونت كريستي', 'Monte Cristi', 55, '', NULL, NULL, NULL),
(827, 'سالسيدو', 'Salcedo', 55, '', NULL, NULL, NULL),
(828, 'بويرتو بلاتا', 'Puerto Plata', 55, '', NULL, NULL, NULL),
(829, 'سان بيدرو دي ماكوريس', 'San Pedro De Macoris', 55, '', NULL, NULL, NULL),
(830, 'بدرنالس', 'Pedernales', 55, '', NULL, NULL, NULL),
(831, 'الاستقلال', 'Independencia', 55, '', NULL, NULL, NULL),
(832, 'لا فيغا', 'La Vega', 55, '', NULL, NULL, NULL),
(833, 'داجابون', 'Dajabon', 55, '', NULL, NULL, NULL),
(834, 'حاتو العمدة', 'Hato Mayor', 55, '', NULL, NULL, NULL),
(835, 'باراهونا', 'Barahona', 55, '', NULL, NULL, NULL),
(836, 'سان خوان', 'San Juan', 55, '', NULL, NULL, NULL),
(837, 'لا التاغراسيا', 'La Altagracia', 55, '', NULL, NULL, NULL),
(838, 'فالفيردي', 'Valverde', 55, '', NULL, NULL, NULL),
(839, 'Baoruco', 'Baoruco', 55, '', NULL, NULL, NULL),
(840, 'مونسنور نويل', 'Monsenor Nouel', 55, '', NULL, NULL, NULL),
(841, 'عين تموشنت', 'Ain Temouchent', 56, '', NULL, NULL, NULL),
(842, 'وهران', 'Oran', 56, '', NULL, NULL, NULL),
(843, 'المدية', 'Medea', 56, '', NULL, NULL, NULL),
(844, 'الشلف', 'Chlef', 56, '', NULL, NULL, NULL),
(845, 'بشار', 'Bechar', 56, '', NULL, NULL, NULL),
(846, 'تمنراست', 'Tamanghasset', 56, '', NULL, NULL, NULL),
(847, 'بجاية', 'Bejaia', 56, '', NULL, NULL, NULL),
(848, 'تيزي وزو', 'Tizi Ouzou', 56, '', NULL, NULL, NULL),
(849, 'بومرداس', 'Boumerdes', 56, '', NULL, NULL, NULL),
(850, 'عين الدفلة', 'Ain Defla', 56, '', NULL, NULL, NULL),
(851, 'عنابة', 'Annaba', 56, '', NULL, NULL, NULL),
(852, 'سطيف', 'Setif', 56, '', NULL, NULL, NULL),
(853, 'غليزان', 'Relizane', 56, '', NULL, NULL, NULL),
(854, 'ماسكارا', 'Mascara', 56, '', NULL, NULL, NULL),
(855, 'مستغانم', 'Mostaganem', 56, '', NULL, NULL, NULL),
(856, 'تيارت', 'Tiaret', 56, '', NULL, NULL, NULL),
(857, 'برج بوعريريج', 'Bordj Bou Arreridj', 56, '', NULL, NULL, NULL),
(858, 'تيبازة', 'Tipaza', 56, '', NULL, NULL, NULL),
(860, 'البويرة', 'Bouira', 56, '', NULL, NULL, NULL),
(861, 'تيسمسيلت', 'Tissemsilt', 56, '', NULL, NULL, NULL),
(862, 'جيجل', 'Jijel', 56, '', NULL, NULL, NULL),
(863, 'صيدا', 'Saida', 56, '', NULL, NULL, NULL),
(864, 'إليزي', 'Illizi', 56, '', NULL, NULL, NULL),
(865, 'تلمسان', 'Tlemcen', 56, '', NULL, NULL, NULL),
(866, 'أدرار', 'Adrar', 56, '', NULL, NULL, NULL),
(867, 'الأغواط', 'Laghouat', 56, '', NULL, NULL, NULL),
(868, 'قسنطينة', 'Constantine', 56, '', NULL, NULL, NULL),
(869, 'خنشلة', 'Khenchela', 56, '', NULL, NULL, NULL),
(870, 'باتنة', 'Batna', 56, '', NULL, NULL, NULL),
(871, 'الجزائر', 'Alger', 56, '', NULL, NULL, NULL),
(872, 'مسيلة', 'M\'sila', 56, '', NULL, NULL, NULL),
(873, 'سكيكدة', 'Skikda', 56, '', NULL, NULL, NULL),
(874, 'ام البواقي', 'Oum el Bouaghi', 56, '', NULL, NULL, NULL),
(875, 'نعمة', 'Naama', 56, '', NULL, NULL, NULL),
(876, 'سيدي بلعباس', 'Sidi Bel Abbes', 56, '', NULL, NULL, NULL),
(877, 'ميلة', 'Mila', 56, '', NULL, NULL, NULL),
(878, 'ورقلة', 'Ouargla', 56, '', NULL, NULL, NULL),
(879, 'الجلفة', 'Djelfa', 56, '', NULL, NULL, NULL),
(880, 'البيض', 'El Bayadh', 56, '', NULL, NULL, NULL),
(881, 'سوق أهراس', 'Souk Ahras', 56, '', NULL, NULL, NULL),
(882, 'الواد', 'El Oued', 56, '', NULL, NULL, NULL),
(883, 'البليدة', 'Blida', 56, '', NULL, NULL, NULL),
(884, 'بسكرة', 'Biskra', 56, '', NULL, NULL, NULL),
(885, 'تبسة', 'Tebessa', 56, '', NULL, NULL, NULL),
(886, 'قالمة', 'Guelma', 56, '', NULL, NULL, NULL),
(887, 'تندوف', 'Tindouf', 56, '', NULL, NULL, NULL),
(888, 'غرداية', 'Ghardaia', 56, '', NULL, NULL, NULL),
(889, 'مانابي', 'Manabi', 57, '', NULL, NULL, NULL),
(890, 'زامورا-شينشيب', 'Zamora-Chinchipe', 57, '', NULL, NULL, NULL),
(891, 'مورونا سانتياغو', 'Morona-Santiago', 57, '', NULL, NULL, NULL),
(892, 'اورو', 'El Oro', 57, '', NULL, NULL, NULL),
(893, 'ازواي', 'Azuay', 57, '', NULL, NULL, NULL),
(894, 'سوكومبيوس', 'Sucumbios', 57, '', NULL, NULL, NULL),
(895, 'غواياس', 'Guayas', 57, '', NULL, NULL, NULL),
(896, 'لوس ريوس', 'Los Rios', 57, '', NULL, NULL, NULL),
(897, 'وخا', 'Loja', 57, '', NULL, NULL, NULL),
(898, 'شيمبورازو', 'Chimborazo', 57, '', NULL, NULL, NULL),
(899, 'تونغوراهوا', 'Tungurahua', 57, '', NULL, NULL, NULL),
(900, 'ازميرالدا', 'Esmeraldas', 57, '', NULL, NULL, NULL),
(901, 'بيشينشا', 'Pichincha', 57, '', NULL, NULL, NULL),
(902, 'إمبابورا', 'Imbabura', 57, '', NULL, NULL, NULL),
(903, 'كوتوباكسي', 'Cotopaxi', 57, '', NULL, NULL, NULL),
(904, 'كارشي', 'Carchi', 57, '', NULL, NULL, NULL),
(905, 'نابو', 'Napo', 57, '', NULL, NULL, NULL),
(906, 'كنار', 'Canar', 57, '', NULL, NULL, NULL),
(907, 'باستازا', 'Pastaza', 57, '', NULL, NULL, NULL),
(908, 'أوريانا', 'Orellana', 57, '', NULL, NULL, NULL),
(909, 'بوليفار', 'Bolivar', 57, '', NULL, NULL, NULL),
(910, 'غالاباغوس', 'Galapagos', 57, '', NULL, NULL, NULL),
(911, 'Harjumaa', 'Harjumaa', 58, '', NULL, NULL, NULL),
(912, 'تارتوما', 'Tartumaa', 58, '', NULL, NULL, NULL),
(913, 'هيوما', 'Hiiumaa', 58, '', NULL, NULL, NULL),
(914, 'رابلاما', 'Raplamaa', 58, '', NULL, NULL, NULL),
(915, 'فلغما', 'Valgamaa', 58, '', NULL, NULL, NULL),
(916, 'انيما', 'Laanemaa', 58, '', NULL, NULL, NULL),
(917, 'بولفاما', 'Polvamaa', 58, '', NULL, NULL, NULL),
(918, 'بارنوما', 'Parnumaa', 58, '', NULL, NULL, NULL),
(919, 'اني فيريوما', 'Laane-Virumaa', 58, '', NULL, NULL, NULL),
(920, 'يارفا', 'Jarvamaa', 58, '', NULL, NULL, NULL),
(921, 'فيلجاندي', 'Viljandimaa', 58, '', NULL, NULL, NULL),
(922, 'ساريما', 'Saaremaa', 58, '', NULL, NULL, NULL),
(923, 'جوغفما', 'Jogevamaa', 58, '', NULL, NULL, NULL),
(924, 'المؤسسة الدولية للتنمية فيروما', 'Ida-Virumaa', 58, '', NULL, NULL, NULL),
(925, 'فوروما', 'Vorumaa', 58, '', NULL, NULL, NULL),
(926, 'الشرقية', 'Ash Sharqiyah', 59, '', NULL, NULL, NULL),
(927, 'الغربية', 'Al Gharbiyah', 59, '', NULL, NULL, NULL),
(928, 'الدقهلية', 'Ad Daqahliyah', 59, '', NULL, NULL, NULL),
(929, 'الجيزة', 'Al Jizah', 59, '', NULL, NULL, NULL),
(930, 'المنيا', 'Al Minya', 59, '', NULL, NULL, NULL),
(931, 'كفر الشيخ', 'Kafr ash Shaykh', 59, '', NULL, NULL, NULL),
(932, 'البحيرة', 'Al Buhayrah', 59, '', NULL, NULL, NULL),
(933, 'قنا', 'Qina', 59, '', NULL, NULL, NULL),
(934, 'القاهره', 'Al Qahirah', 59, '', NULL, NULL, NULL),
(935, 'الاسكندرية', 'Al Iskandariyah', 59, '', NULL, NULL, NULL),
(936, 'الفيوم', 'Al Fayyum', 59, '', NULL, NULL, NULL),
(937, 'أسيوط', 'Asyut', 59, '', NULL, NULL, NULL),
(938, 'المنوفية', 'Al Minufiyah', 59, '', NULL, NULL, NULL),
(939, 'بني سويف', 'Bani Suwayf', 59, '', NULL, NULL, NULL),
(940, 'القليوبية', 'Al Qalyubiyah', 59, '', NULL, NULL, NULL),
(941, 'أسوان', 'Aswan', 59, '', NULL, NULL, NULL),
(942, 'شمال سينا', 'Shamal Sina\'', 59, '', NULL, NULL, NULL),
(943, 'سوهاج', 'Suhaj', 59, '', NULL, NULL, NULL),
(944, 'جنب سينا', 'Janub Sina\'', 59, '', NULL, NULL, NULL),
(945, 'البحر الاحمر', 'Al Bahr al Ahmar', 59, '', NULL, NULL, NULL),
(946, 'الاسماعيلية', 'Al Isma\'iliyah', 59, '', NULL, NULL, NULL),
(947, 'دمياط', 'Dumyat', 59, '', NULL, NULL, NULL),
(948, 'مطروح', 'Matruh', 59, '', NULL, NULL, NULL),
(949, 'كما سوايز', 'As Suways', 59, '', NULL, NULL, NULL),
(950, 'الوادي الجديد', 'Al Wadi al Jadid', 59, '', NULL, NULL, NULL),
(951, 'بور سعيد', 'Bur Sa\'id', 59, '', NULL, NULL, NULL),
(954, 'أراغون', 'Aragon', 62, '', NULL, NULL, NULL),
(955, 'غاليسيا', 'Galicia', 62, '', NULL, NULL, NULL),
(956, 'كاستيا ي ليون', 'Castilla y Leon', 62, '', NULL, NULL, NULL),
(957, 'إكستريمادورا', 'Extremadura', 62, '', NULL, NULL, NULL),
(958, 'بايس فاسكو', 'Pais Vasco', 62, '', NULL, NULL, NULL),
(959, 'كانتابريا', 'Cantabria', 62, '', NULL, NULL, NULL),
(960, 'نافارا', 'Navarra', 62, '', NULL, NULL, NULL),
(961, 'أستورياس', 'Asturias', 62, '', NULL, NULL, NULL),
(962, 'لا ريوخا', 'La Rioja', 62, '', NULL, NULL, NULL),
(963, 'كاستيا لا مانشا', 'Castilla-La Mancha', 62, '', NULL, NULL, NULL),
(964, 'مورسيا', 'Murcia', 62, '', NULL, NULL, NULL),
(965, 'الأندلس', 'Andalucia', 62, '', NULL, NULL, NULL),
(966, 'Comunidad فالنسيانا', 'Comunidad Valenciana', 62, '', NULL, NULL, NULL),
(967, 'كاتالونيا', 'Catalonia', 62, '', NULL, NULL, NULL),
(968, 'جزر الكناري', 'Canarias', 62, '', NULL, NULL, NULL),
(969, 'مدريد', 'Madrid', 62, '', NULL, NULL, NULL),
(970, 'ايسلاس باليريس', 'Islas Baleares', 62, '', NULL, NULL, NULL),
(984, 'أولو', 'Oulu', 64, '', NULL, NULL, NULL),
(985, 'فنلندا الغربية', 'Western Finland', 64, '', NULL, NULL, NULL),
(986, 'ابلاند', 'Lapland', 64, '', NULL, NULL, NULL),
(987, 'شرق فنلندا', 'Eastern Finland', 64, '', NULL, NULL, NULL),
(988, 'جنوب فنلندا', 'Southern Finland', 64, '', NULL, NULL, NULL),
(989, 'أرض', 'Aland', 64, '', NULL, NULL, NULL),
(992, 'شمالي', 'Northern', 65, '', NULL, NULL, NULL),
(993, 'الغربي', 'Western', 65, '', NULL, NULL, NULL),
(994, 'وسط', 'Central', 65, '', NULL, NULL, NULL),
(995, 'الشرقية', 'Eastern', 65, '', NULL, NULL, NULL),
(997, 'ثرثرة', 'Yap', 67, '', NULL, NULL, NULL),
(998, 'بوهنباي', 'Pohnpei', 67, '', NULL, NULL, NULL),
(999, 'شوك', 'Chuuk', 67, '', NULL, NULL, NULL),
(1000, 'كوسراي', 'Kosrae', 67, '', NULL, NULL, NULL),
(1002, 'آكيتن', 'Aquitaine', 69, '', NULL, NULL, NULL),
(1003, 'نور-با-دو-كاليه', 'Nord-Pas-de-Calais', 69, '', NULL, NULL, NULL),
(1004, 'لورين', 'Lorraine', 69, '', NULL, NULL, NULL),
(1005, 'هوت نورماندي', 'Haute-Normandie', 69, '', NULL, NULL, NULL),
(1006, 'بيكاردي', 'Picardie', 69, '', NULL, NULL, NULL),
(1007, 'فرانش-كونت', 'Franche-Comte', 69, '', NULL, NULL, NULL),
(1008, 'باي دو لا لوار', 'Pays de la Loire', 69, '', NULL, NULL, NULL),
(1009, 'الشمبانيا اردين', 'Champagne-Ardenne', 69, '', NULL, NULL, NULL),
(1010, 'مركز', 'Centre', 69, '', NULL, NULL, NULL),
(1011, 'لانغدوك روسيون', 'Languedoc-Roussillon', 69, '', NULL, NULL, NULL),
(1012, 'بواتو-شارانت', 'Poitou-Charentes', 69, '', NULL, NULL, NULL),
(1013, 'رون ألب', 'Rhone-Alpes', 69, '', NULL, NULL, NULL),
(1014, 'باس نورماندي', 'Basse-Normandie', 69, '', NULL, NULL, NULL),
(1015, 'إيل دو فرانس', 'Ile-de-France', 69, '', NULL, NULL, NULL),
(1016, 'بورغون', 'Bourgogne', 69, '', NULL, NULL, NULL),
(1017, 'أوفيرني', 'Auvergne', 69, '', NULL, NULL, NULL),
(1018, 'بروفانس ألب كوت دازور', 'Provence-Alpes-Cote d\'Azur', 69, '', NULL, NULL, NULL),
(1019, 'كورس', 'Corse', 69, '', NULL, NULL, NULL),
(1020, 'الألزاس', 'Alsace', 69, '', NULL, NULL, NULL),
(1021, 'بريتان', 'Bretagne', 69, '', NULL, NULL, NULL),
(1022, 'ميدي-بيرينيه', 'Midi-Pyrenees', 69, '', NULL, NULL, NULL),
(1023, 'ليموزين', 'Limousin', 69, '', NULL, NULL, NULL);
INSERT INTO `cities` (`id`, `name_ar`, `name_en`, `country_id`, `key`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1024, 'إيستوير', 'Estuaire', 70, '', NULL, NULL, NULL),
(1025, 'ليو نتيم', 'Woleu-Ntem', 70, '', NULL, NULL, NULL),
(1026, 'موين-أوغوي', 'Moyen-Ogooue', 70, '', NULL, NULL, NULL),
(1027, 'أوغوي البحرية', 'Ogooue-Maritime', 70, '', NULL, NULL, NULL),
(1028, 'أوغوي لولو', 'Ogooue-Lolo', 70, '', NULL, NULL, NULL),
(1029, 'أوجوي إيفندو', 'Ogooue-Ivindo', 70, '', NULL, NULL, NULL),
(1030, 'أوت أوغوي', 'Haut-Ogooue', 70, '', NULL, NULL, NULL),
(1031, 'نغوني', 'Ngounie', 70, '', NULL, NULL, NULL),
(1032, 'النيانغا', 'Nyanga', 70, '', NULL, NULL, NULL),
(1033, 'رسيستيرشاير', 'Worcestershire', 71, '', NULL, NULL, NULL),
(1034, 'هامبشاير', 'Hampshire', 71, '', NULL, NULL, NULL),
(1035, 'هرفوردشير', 'Herefordshire', 71, '', NULL, NULL, NULL),
(1036, 'إسيكس', 'Essex', 71, '', NULL, NULL, NULL),
(1037, 'بوويز', 'Powys', 71, '', NULL, NULL, NULL),
(1038, 'مونماوثشاير', 'Monmouthshire', 71, '', NULL, NULL, NULL),
(1039, 'الحدود الاسكتلندية', 'Scottish Borders', 71, '', NULL, NULL, NULL),
(1040, 'كمبريا', 'Cumbria', 71, '', NULL, NULL, NULL),
(1041, 'ديفون', 'Devon', 71, '', NULL, NULL, NULL),
(1042, 'ستافوردشاير', 'Staffordshire', 71, '', NULL, NULL, NULL),
(1043, 'دورست', 'Dorset', 71, '', NULL, NULL, NULL),
(1044, 'هيرتفورد', 'Hertford', 71, '', NULL, NULL, NULL),
(1045, 'كامبريدج', 'Cambridgeshire', 71, '', NULL, NULL, NULL),
(1046, 'لانكشاير', 'Lancashire', 71, '', NULL, NULL, NULL),
(1047, 'كونوي', 'Conwy', 71, '', NULL, NULL, NULL),
(1048, 'سرديجون', 'Ceredigion', 71, '', NULL, NULL, NULL),
(1049, 'روندا سينون تاف', 'Rhondda Cynon Taff', 71, '', NULL, NULL, NULL),
(1050, 'هضبة', 'Highland', 71, '', NULL, NULL, NULL),
(1051, 'بيرث و كينروس', 'Perth and Kinross', 71, '', NULL, NULL, NULL),
(1052, 'كيرفيلي', 'Caerphilly', 71, '', NULL, NULL, NULL),
(1053, 'Blaenau Gwent', 'Blaenau Gwent', 71, '', NULL, NULL, NULL),
(1054, 'ميرثير تيدفيل', 'Merthyr Tydfil', 71, '', NULL, NULL, NULL),
(1055, 'بيمبروكشاير', 'Pembrokeshire', 71, '', NULL, NULL, NULL),
(1056, 'أبردينشاير', 'Aberdeenshire', 71, '', NULL, NULL, NULL),
(1057, 'جويند', 'Gwynedd', 71, '', NULL, NULL, NULL),
(1058, 'مدينة أبردين', 'Aberdeen City', 71, '', NULL, NULL, NULL),
(1059, 'ناي آلة موسيقية', 'Fife', 71, '', NULL, NULL, NULL),
(1060, 'نيث بورت تالبوت', 'Neath Port Talbot', 71, '', NULL, NULL, NULL),
(1061, 'جزيرة انجلسي', 'Isle of Anglesey', 71, '', NULL, NULL, NULL),
(1062, 'ووكينغهام', 'Wokingham', 71, '', NULL, NULL, NULL),
(1063, 'يورك', 'York', 71, '', NULL, NULL, NULL),
(1064, 'ستيرلينغ', 'Stirling', 71, '', NULL, NULL, NULL),
(1065, 'كرمرثنشير', 'Carmarthenshire', 71, '', NULL, NULL, NULL),
(1066, 'كارديف', 'Bridgend', 71, '', NULL, NULL, NULL),
(1067, 'شرق لوثيان', 'East Lothian', 71, '', NULL, NULL, NULL),
(1068, 'انجوس', 'Angus', 71, '', NULL, NULL, NULL),
(1069, 'موراي', 'Moray', 71, '', NULL, NULL, NULL),
(1070, 'تورفين', 'Torfaen', 71, '', NULL, NULL, NULL),
(1071, 'سوانسي', 'Swansea', 71, '', NULL, NULL, NULL),
(1072, 'فيل غلامورغان', 'Vale of Glamorgan', 71, '', NULL, NULL, NULL),
(1073, 'أوكسفوردشاير', 'Oxfordshire', 71, '', NULL, NULL, NULL),
(1074, 'سيارة بمقعدين', 'Surrey', 71, '', NULL, NULL, NULL),
(1075, 'جنوب لاناركشاير', 'South Lanarkshire', 71, '', NULL, NULL, NULL),
(1076, 'يسترشير', 'Leicestershire', 71, '', NULL, NULL, NULL),
(1077, 'ويجان', 'Wigan', 71, '', NULL, NULL, NULL),
(1078, 'نورثهامبتونشاير', 'Northamptonshire', 71, '', NULL, NULL, NULL),
(1079, 'لينكولنشاير', 'Lincolnshire', 71, '', NULL, NULL, NULL),
(1080, 'أرغيل وبوت', 'Argyll and Bute', 71, '', NULL, NULL, NULL),
(1081, 'نورثمبرلاند', 'Northumberland', 71, '', NULL, NULL, NULL),
(1082, 'نورفولك', 'Norfolk', 71, '', NULL, NULL, NULL),
(1083, 'سوليهال', 'Solihull', 71, '', NULL, NULL, NULL),
(1084, 'ريكسهام', 'Wrexham', 71, '', NULL, NULL, NULL),
(1085, 'شيشاير', 'Cheshire', 71, '', NULL, NULL, NULL),
(1086, 'شروبشاير', 'Shropshire', 71, '', NULL, NULL, NULL),
(1087, 'بانبريدج', 'Banbridge', 71, '', NULL, NULL, NULL),
(1088, 'جنوب جلوسيسترشاير', 'South Gloucestershire', 71, '', NULL, NULL, NULL),
(1089, 'لوثيان الغربية', 'West Lothian', 71, '', NULL, NULL, NULL),
(1091, 'كينت', 'Kent', 71, '', NULL, NULL, NULL),
(1092, 'ليدز', 'Leeds', 71, '', NULL, NULL, NULL),
(1093, 'سومرست', 'Somerset', 71, '', NULL, NULL, NULL),
(1094, 'جلوسيسترشاير', 'Gloucestershire', 71, '', NULL, NULL, NULL),
(1095, 'باكينجهامشير', 'Buckinghamshire', 71, '', NULL, NULL, NULL),
(1096, 'كوليرين', 'Coleraine', 71, '', NULL, NULL, NULL),
(1097, 'كريجافون', 'Craigavon', 71, '', NULL, NULL, NULL),
(1098, 'أنتريم', 'Antrim', 71, '', NULL, NULL, NULL),
(1099, 'يمافادي', 'Limavady', 71, '', NULL, NULL, NULL),
(1100, 'أرما', 'Armagh', 71, '', NULL, NULL, NULL),
(1101, 'بلايميندا', 'Ballymena', 71, '', NULL, NULL, NULL),
(1102, 'شمال يوركشاير', 'North Yorkshire', 71, '', NULL, NULL, NULL),
(1103, 'سيفتون', 'Sefton', 71, '', NULL, NULL, NULL),
(1104, 'وارويكشاير', 'Warwickshire', 71, '', NULL, NULL, NULL),
(1105, 'ديري', 'Derry', 71, '', NULL, NULL, NULL),
(1106, 'ايلين سيار', 'Eilean Siar', 71, '', NULL, NULL, NULL),
(1107, 'شمال لاناركشاير', 'North Lanarkshire', 71, '', NULL, NULL, NULL),
(1108, 'فالكيرك', 'Falkirk', 71, '', NULL, NULL, NULL),
(1109, 'جزر شتلاند', 'Shetland Islands', 71, '', NULL, NULL, NULL),
(1110, 'ويلتشير', 'Wiltshire', 71, '', NULL, NULL, NULL),
(1111, 'دورهام', 'Durham', 71, '', NULL, NULL, NULL),
(1112, 'دارلينجتون', 'Darlington', 71, '', NULL, NULL, NULL),
(1113, 'سوفولك', 'Suffolk', 71, '', NULL, NULL, NULL),
(1114, 'ديربيشاير', 'Derbyshire', 71, '', NULL, NULL, NULL),
(1115, 'والسال', 'Walsall', 71, '', NULL, NULL, NULL),
(1116, 'روثرهام', 'Rotherham', 71, '', NULL, NULL, NULL),
(1117, 'غرب دنبارتنشير', 'West Dunbartonshire', 71, '', NULL, NULL, NULL),
(1118, 'شرق ساسكس', 'East Sussex', 71, '', NULL, NULL, NULL),
(1119, 'كوفنتري', 'Coventry', 71, '', NULL, NULL, NULL),
(1120, 'دربي', 'Derby', 71, '', NULL, NULL, NULL),
(1121, 'ساوثيند على البحر', 'Southend-on-Sea', 71, '', NULL, NULL, NULL),
(1122, 'كلاكمانشاير', 'Clackmannanshire', 71, '', NULL, NULL, NULL),
(1123, 'كركليس', 'Kirklees', 71, '', NULL, NULL, NULL),
(1124, 'سانت هيلينز', 'St. Helens', 71, '', NULL, NULL, NULL),
(1125, 'أوما', 'Omagh', 71, '', NULL, NULL, NULL),
(1126, 'كورنوال', 'Cornwall', 71, '', NULL, NULL, NULL),
(1127, 'شمال لينكولنشاير', 'North Lincolnshire', 71, '', NULL, NULL, NULL),
(1128, 'نيوري ومورن', 'Newry and Mourne', 71, '', NULL, NULL, NULL),
(1129, 'جنوب ايرشاير', 'South Ayrshire', 71, '', NULL, NULL, NULL),
(1130, 'جزيرة وايت', 'Isle of Wight', 71, '', NULL, NULL, NULL),
(1132, 'دومفريز وجالاوي', 'Dumfries and Galloway', 71, '', NULL, NULL, NULL),
(1133, 'بيدفوردشير', 'Bedfordshire', 71, '', NULL, NULL, NULL),
(1134, 'أسفل', 'Down', 71, '', NULL, NULL, NULL),
(1135, 'دونجانون', 'Dungannon', 71, '', NULL, NULL, NULL),
(1136, 'رينفروشاير', 'Renfrewshire', 71, '', NULL, NULL, NULL),
(1137, 'ليستر', 'Leicester', 71, '', NULL, NULL, NULL),
(1138, 'مدينة غلاسكو', 'Glasgow City', 71, '', NULL, NULL, NULL),
(1139, 'غرب ساسكس', 'West Sussex', 71, '', NULL, NULL, NULL),
(1140, 'وارينغتون', 'Warrington', 71, '', NULL, NULL, NULL),
(1141, 'كوكستاون', 'Cookstown', 71, '', NULL, NULL, NULL),
(1142, 'شمال ايرشاير', 'North Ayrshire', 71, '', NULL, NULL, NULL),
(1143, 'بارنسلي', 'Barnsley', 71, '', NULL, NULL, NULL),
(1144, 'استربان', 'Strabane', 71, '', NULL, NULL, NULL),
(1145, 'دونكاستر', 'Doncaster', 71, '', NULL, NULL, NULL),
(1146, 'بلموني', 'Ballymoney', 71, '', NULL, NULL, NULL),
(1147, 'فيرماناغ', 'Fermanagh', 71, '', NULL, NULL, NULL),
(1149, 'نوتنغهام', 'Nottingham', 71, '', NULL, NULL, NULL),
(1151, 'تامسايد', 'Tameside', 71, '', NULL, NULL, NULL),
(1152, 'روتلاند', 'Rutland', 71, '', NULL, NULL, NULL),
(1153, 'نوتينغمشير', 'Nottinghamshire', 71, '', NULL, NULL, NULL),
(1154, 'ميدلوثيان', 'Midlothian', 71, '', NULL, NULL, NULL),
(1155, 'شرق ايرشاير', 'East Ayrshire', 71, '', NULL, NULL, NULL),
(1156, 'ستوك أون ترينت', 'Stoke-on-Trent', 71, '', NULL, NULL, NULL),
(1157, 'بريستول', 'Bristol', 71, '', NULL, NULL, NULL),
(1158, 'فلينتشير', 'Flintshire', 71, '', NULL, NULL, NULL),
(1159, 'بلاكبيرن مع داروين', 'Blackburn with Darwen', 71, '', NULL, NULL, NULL),
(1160, 'مويلي', 'Moyle', 71, '', NULL, NULL, NULL),
(1161, 'كاريكفرجس', 'Carrickfergus', 71, '', NULL, NULL, NULL),
(1162, 'كاسلرا', 'Castlereagh', 71, '', NULL, NULL, NULL),
(1163, 'ليرن', 'Larne', 71, '', NULL, NULL, NULL),
(1164, 'بلفاست', 'Belfast', 71, '', NULL, NULL, NULL),
(1165, 'مايرافلت', 'Magherafelt', 71, '', NULL, NULL, NULL),
(1166, 'شمال داون', 'North Down', 71, '', NULL, NULL, NULL),
(1167, 'شمال سومرست', 'North Somerset', 71, '', NULL, NULL, NULL),
(1168, 'شرق رينفروشاير', 'East Renfrewshire', 71, '', NULL, NULL, NULL),
(1169, 'نيوبورت', 'Newport', 71, '', NULL, NULL, NULL),
(1170, 'باث وشمال شرق سومرست', 'Bath and North East Somerset', 71, '', NULL, NULL, NULL),
(1173, 'نيوهام', 'Newham', 71, '', NULL, NULL, NULL),
(1175, 'دنبيشير', 'Denbighshire', 71, '', NULL, NULL, NULL),
(1176, 'شرق ركوب يوركشاير', 'East Riding of Yorkshire', 71, '', NULL, NULL, NULL),
(1177, 'بيكسلي', 'Bexley', 71, '', NULL, NULL, NULL),
(1178, 'بروملي', 'Bromley', 71, '', NULL, NULL, NULL),
(1179, 'برادفورد', 'Bradford', 71, '', NULL, NULL, NULL),
(1180, 'غابة براكنيل', 'Bracknell Forest', 71, '', NULL, NULL, NULL),
(1181, 'كارديف', 'Cardiff', 71, '', NULL, NULL, NULL),
(1182, 'برمنغهام', 'Birmingham', 71, '', NULL, NULL, NULL),
(1183, 'أوركني', 'Orkney', 71, '', NULL, NULL, NULL),
(1184, 'شرق دانبارتونشاير', 'East Dunbartonshire', 71, '', NULL, NULL, NULL),
(1185, 'بلاكبول', 'Blackpool', 71, '', NULL, NULL, NULL),
(1186, 'ساوثامبتون', 'Southampton', 71, '', NULL, NULL, NULL),
(1187, 'نيوكاسل أبون تاين', 'Newcastle upon Tyne', 71, '', NULL, NULL, NULL),
(1188, 'بولتون', 'Bolton', 71, '', NULL, NULL, NULL),
(1189, 'ريدكار وكليفلاند', 'Redcar and Cleveland', 71, '', NULL, NULL, NULL),
(1190, 'بورنموث', 'Bournemouth', 71, '', NULL, NULL, NULL),
(1191, 'سويندون', 'Swindon', 71, '', NULL, NULL, NULL),
(1192, 'ستوكبورت', 'Stockport', 71, '', NULL, NULL, NULL),
(1193, 'وندسور ومايدنهيد', 'Windsor and Maidenhead', 71, '', NULL, NULL, NULL),
(1194, 'إنفركلايد', 'Inverclyde', 71, '', NULL, NULL, NULL),
(1195, 'ميدواي', 'Medway', 71, '', NULL, NULL, NULL),
(1196, 'ميلتون كينز', 'Milton Keynes', 71, '', NULL, NULL, NULL),
(1197, 'دندي سيتي', 'Dundee City', 71, '', NULL, NULL, NULL),
(1198, 'تيلفورد وركين', 'Telford and Wrekin', 71, '', NULL, NULL, NULL),
(1199, 'قراءة', 'Reading', 71, '', NULL, NULL, NULL),
(1200, 'دفن', 'Bury', 71, '', NULL, NULL, NULL),
(1201, 'ولفرهامبتون', 'Wolverhampton', 71, '', NULL, NULL, NULL),
(1202, 'ساوثوورك', 'Southwark', 71, '', NULL, NULL, NULL),
(1203, 'كامدن', 'Camden', 71, '', NULL, NULL, NULL),
(1204, 'مستنقع', 'Slough', 71, '', NULL, NULL, NULL),
(1205, 'ميدلسبره', 'Middlesbrough', 71, '', NULL, NULL, NULL),
(1206, 'ستوكتون أون تيز', 'Stockton-on-Tees', 71, '', NULL, NULL, NULL),
(1207, 'نيوتاونبي', 'Newtownabbey', 71, '', NULL, NULL, NULL),
(1208, 'يسبورن', 'Lisburn', 71, '', NULL, NULL, NULL),
(1210, 'ويشام', 'Lewisham', 71, '', NULL, NULL, NULL),
(1211, 'غرب بيركشاير', 'West Berkshire', 71, '', NULL, NULL, NULL),
(1212, 'مانشستر', 'Manchester', 71, '', NULL, NULL, NULL),
(1213, 'وستمنستر', 'Westminster', 71, '', NULL, NULL, NULL),
(1214, 'أردز', 'Ards', 71, '', NULL, NULL, NULL),
(1215, 'بليموث', 'Plymouth', 71, '', NULL, NULL, NULL),
(1216, 'كرويدون', 'Croydon', 71, '', NULL, NULL, NULL),
(1217, 'باركينج وداجنهام', 'Barking and Dagenham', 71, '', NULL, NULL, NULL),
(1218, 'هارتلبول', 'Hartlepool', 71, '', NULL, NULL, NULL),
(1219, 'شيفيلد', 'Sheffield', 71, '', NULL, NULL, NULL),
(1220, 'أولدهام', 'Oldham', 71, '', NULL, NULL, NULL),
(1221, 'نوزلي', 'Knowsley', 71, '', NULL, NULL, NULL),
(1222, 'ليفربول', 'Liverpool', 71, '', NULL, NULL, NULL),
(1223, 'دادلي', 'Dudley', 71, '', NULL, NULL, NULL),
(1224, 'غيتسهيد', 'Gateshead', 71, '', NULL, NULL, NULL),
(1225, 'إيلينغ', 'Ealing', 71, '', NULL, NULL, NULL),
(1226, 'ادنبره', 'Edinburgh', 71, '', NULL, NULL, NULL),
(1227, 'انفيلد', 'Enfield', 71, '', NULL, NULL, NULL),
(1228, 'كلدردل', 'Calderdale', 71, '', NULL, NULL, NULL),
(1229, 'وقف على', 'Halton', 71, '', NULL, NULL, NULL),
(1230, 'شمال تينيسايد', 'North Tyneside', 71, '', NULL, NULL, NULL),
(1231, 'ثوروك', 'Thurrock', 71, '', NULL, NULL, NULL),
(1232, 'شمال شرق لينكولنشاير', 'North East Lincolnshire', 71, '', NULL, NULL, NULL),
(1233, 'يرل', 'Wirral', 71, '', NULL, NULL, NULL),
(1234, 'بتذلل', 'Hackney', 71, '', NULL, NULL, NULL),
(1235, 'هامرسميث وفولهام', 'Hammersmith and Fulham', 71, '', NULL, NULL, NULL),
(1236, 'هافرينج', 'Havering', 71, '', NULL, NULL, NULL),
(1237, 'مسلفة', 'Harrow', 71, '', NULL, NULL, NULL),
(1238, 'بارنيت', 'Barnet', 71, '', NULL, NULL, NULL),
(1239, 'هونسلو', 'Hounslow', 71, '', NULL, NULL, NULL),
(1240, 'برايتون وهوف', 'Brighton and Hove', 71, '', NULL, NULL, NULL),
(1241, 'كينغستون على هال', 'Kingston upon Hull', 71, '', NULL, NULL, NULL),
(1242, 'ريدبريدج', 'Redbridge', 71, '', NULL, NULL, NULL),
(1243, 'إزلينغتون', 'Islington', 71, '', NULL, NULL, NULL),
(1244, 'كنسينغتون وتشيلسي', 'Kensington and Chelsea', 71, '', NULL, NULL, NULL),
(1245, 'كينغستون أبون تيمز', 'Kingston upon Thames', 71, '', NULL, NULL, NULL),
(1246, 'لامبث', 'Lambeth', 71, '', NULL, NULL, NULL),
(1247, 'لندن', 'London', 71, '', NULL, NULL, NULL),
(1248, 'لوتون', 'Luton', 71, '', NULL, NULL, NULL),
(1249, 'سندرلاند', 'Sunderland', 71, '', NULL, NULL, NULL),
(1250, 'ميرتون', 'Merton', 71, '', NULL, NULL, NULL),
(1251, 'ساندويل', 'Sandwell', 71, '', NULL, NULL, NULL),
(1252, 'سالفورد', 'Salford', 71, '', NULL, NULL, NULL),
(1253, 'بيتربورو', 'Peterborough', 71, '', NULL, NULL, NULL),
(1254, 'بول', 'Poole', 71, '', NULL, NULL, NULL),
(1255, 'برج هامليتس', 'Tower Hamlets', 71, '', NULL, NULL, NULL),
(1256, 'بورتسموث', 'Portsmouth', 71, '', NULL, NULL, NULL),
(1257, 'روتشديل', 'Rochdale', 71, '', NULL, NULL, NULL),
(1258, 'غرينتش', 'Greenwich', 71, '', NULL, NULL, NULL),
(1259, 'جنوب تينيسايد', 'South Tyneside', 71, '', NULL, NULL, NULL),
(1260, 'ترافورد', 'Trafford', 71, '', NULL, NULL, NULL),
(1261, 'ساتون', 'Sutton', 71, '', NULL, NULL, NULL),
(1262, 'تورباي', 'Torbay', 71, '', NULL, NULL, NULL),
(1263, 'ريتشموند على نهر التايمز', 'Richmond upon Thames', 71, '', NULL, NULL, NULL),
(1264, 'هيلينغدون', 'Hillingdon', 71, '', NULL, NULL, NULL),
(1265, 'ويكفيلد', 'Wakefield', 71, '', NULL, NULL, NULL),
(1266, 'والثام فوريست', 'Waltham Forest', 71, '', NULL, NULL, NULL),
(1267, 'اندسوورث', 'Wandsworth', 71, '', NULL, NULL, NULL),
(1268, 'برنت', 'Brent', 71, '', NULL, NULL, NULL),
(1269, 'هارينجي', 'Haringey', 71, '', NULL, NULL, NULL),
(1270, 'القديس أندرو', 'Saint Andrew', 72, '', NULL, NULL, NULL),
(1271, 'القديس جورج', 'Saint George', 72, '', NULL, NULL, NULL),
(1272, 'القديس داود', 'Saint David', 72, '', NULL, NULL, NULL),
(1273, 'سانت باتريك', 'Saint Patrick', 72, '', NULL, NULL, NULL),
(1274, 'سان مارك', 'Saint Mark', 72, '', NULL, NULL, NULL),
(1275, 'القديس يوحنا', 'Saint John', 72, '', NULL, NULL, NULL),
(1276, 'أبخازيا', 'Abkhazia', 73, '', NULL, NULL, NULL),
(1277, 'Ninotsmindis Raioni', 'Ninotsmindis Raioni', 73, '', NULL, NULL, NULL),
(1278, 'P\'ot\'i', 'P\'ot\'i', 73, '', NULL, NULL, NULL),
(1279, 'Ambrolauris Raioni', 'Ambrolauris Raioni', 73, '', NULL, NULL, NULL),
(1280, 'اباشي ريوني', 'Abashis Raioni', 73, '', NULL, NULL, NULL),
(1281, 'أخالتسميس ريوني', 'Akhalts\'ikhis Raioni', 73, '', NULL, NULL, NULL),
(1282, 'زيستابونيس ريوني', 'Zestap\'onis Raioni', 73, '', NULL, NULL, NULL),
(1283, 'تسالينججيريس ريوني', 'Tsalenjikhis Raioni', 73, '', NULL, NULL, NULL),
(1284, 'مارنوليس رايوني', 'Marneulis Raioni', 73, '', NULL, NULL, NULL),
(1285, 'جوريس رايوني', 'Goris Raioni', 73, '', NULL, NULL, NULL),
(1286, 'كاريسليز ريوني', 'K\'arelis Raioni', 73, '', NULL, NULL, NULL),
(1287, 'خاشوريس رايوني', 'Khashuris Raioni', 73, '', NULL, NULL, NULL),
(1288, 'كاسبيس رايونى', 'Kaspis Raioni', 73, '', NULL, NULL, NULL),
(1289, 'أجاريا', 'Ajaria', 73, '', NULL, NULL, NULL),
(1290, 'متخيسيس ريوني', 'Mts\'khet\'is Raioni', 73, '', NULL, NULL, NULL),
(1291, 'Ch\'okhatauris Raioni', 'Ch\'okhatauris Raioni', 73, '', NULL, NULL, NULL),
(1292, 'Akhalk\'alak\'is Raioni', 'Akhalk\'alak\'is Raioni', 73, '', NULL, NULL, NULL),
(1293, 'Samtrediis Raioni', 'Samtrediis Raioni', 73, '', NULL, NULL, NULL),
(1294, 'Tqibuli', 'Tqibuli', 73, '', NULL, NULL, NULL),
(1295, 'Dushet\'is Raioni', 'Dushet\'is Raioni', 73, '', NULL, NULL, NULL),
(1296, 'أونيس رايوني', 'Onis Raioni', 73, '', NULL, NULL, NULL),
(1297, 'Lentekhis Raioni', 'Lentekhis Raioni', 73, '', NULL, NULL, NULL),
(1298, 'مارتفيليز ريوني', 'Martvilis Raioni', 73, '', NULL, NULL, NULL),
(1299, 'K\'ut\'aisi', 'K\'ut\'aisi', 73, '', NULL, NULL, NULL),
(1300, 'أخالورجيس رايوني', 'Akhalgoris Raioni', 73, '', NULL, NULL, NULL),
(1301, 'Aspindzis Raioni', 'Aspindzis Raioni', 73, '', NULL, NULL, NULL),
(1302, 'احمدى ريونى', 'Akhmetis Raioni', 73, '', NULL, NULL, NULL),
(1303, 'Lagodekhis Raioni', 'Lagodekhis Raioni', 73, '', NULL, NULL, NULL),
(1304, 'Zugdidis Raioni', 'Zugdidis Raioni', 73, '', NULL, NULL, NULL),
(1305, 'بورجوميس رايوني', 'Borjomis Raioni', 73, '', NULL, NULL, NULL),
(1306, 'T\'ianet\'is Raioni', 'T\'ianet\'is Raioni', 73, '', NULL, NULL, NULL),
(1307, 'خبيص الريوني', 'Khobis Raioni', 73, '', NULL, NULL, NULL),
(1308, 'Kharagaulis Raioni', 'Kharagaulis Raioni', 73, '', NULL, NULL, NULL),
(1309, 'فانيس ريوني', 'Vanis Raioni', 73, '', NULL, NULL, NULL),
(1310, 'تيلافيس ريوني', 'T\'elavis Raioni', 73, '', NULL, NULL, NULL),
(1311, 'تسالكيس رايوني', 'Tsalkis Raioni', 73, '', NULL, NULL, NULL),
(1312, 'قزبيجايز ريوني', 'Qazbegis Raioni', 73, '', NULL, NULL, NULL),
(1313, 'ساجاريجوس رايوني', 'Sagarejos Raioni', 73, '', NULL, NULL, NULL),
(1314, 'تيريتسقاروس ريوني', 'T\'et\'ritsqaros Raioni', 73, '', NULL, NULL, NULL),
(1315, 'Dedop\'listsqaros Raioni', 'Dedop\'listsqaros Raioni', 73, '', NULL, NULL, NULL),
(1316, 'جافي ريوني', 'Javis Raioni', 73, '', NULL, NULL, NULL),
(1317, 'Ch\'khorotsqus Raioni', 'Ch\'khorotsqus Raioni', 73, '', NULL, NULL, NULL),
(1318, 'Tsqaltubo', 'Tsqaltubo', 73, '', NULL, NULL, NULL),
(1319, 'Rust\'avi', 'Rust\'avi', 73, '', NULL, NULL, NULL),
(1320, 'تبليسي', 'T\'bilisi', 73, '', NULL, NULL, NULL),
(1321, 'بغدايس الريوني', 'Baghdat\'is Raioni', 73, '', NULL, NULL, NULL),
(1322, 'Lanch\'khut\'is Raioni', 'Lanch\'khut\'is Raioni', 73, '', NULL, NULL, NULL),
(1323, 'Chiat\'ura', 'Chiat\'ura', 73, '', NULL, NULL, NULL),
(1324, 'Ts\'ageris Raioni', 'Ts\'ageris Raioni', 73, '', NULL, NULL, NULL),
(1327, 'وسط', 'Central', 76, '', NULL, NULL, NULL),
(1328, 'الغربي', 'Western', 76, '', NULL, NULL, NULL),
(1329, 'أشانتي', 'Ashanti', 76, '', NULL, NULL, NULL),
(1330, 'الشرق الأوسط', 'Upper East', 76, '', NULL, NULL, NULL),
(1331, 'فولتا', 'Volta', 76, '', NULL, NULL, NULL),
(1332, 'برونغ أهافو', 'Brong-Ahafo', 76, '', NULL, NULL, NULL),
(1333, 'شمالي', 'Northern', 76, '', NULL, NULL, NULL),
(1334, 'أكبر أكرا', 'Greater Accra', 76, '', NULL, NULL, NULL),
(1335, 'أعالي الغرب', 'Upper West', 76, '', NULL, NULL, NULL),
(1336, 'الشرقية', 'Eastern', 76, '', NULL, NULL, NULL),
(1338, 'Vestgronland', 'Vestgronland', 78, '', NULL, NULL, NULL),
(1339, 'Nordgronland', 'Nordgronland', 78, '', NULL, NULL, NULL),
(1340, 'Ostgronland', 'Ostgronland', 78, '', NULL, NULL, NULL),
(1341, 'سنترال ريفر', 'Central River', 79, '', NULL, NULL, NULL),
(1342, 'الغربي', 'Western', 79, '', NULL, NULL, NULL),
(1343, 'الضفة الشمالية', 'North Bank', 79, '', NULL, NULL, NULL),
(1344, 'أعالي النهر', 'Upper River', 79, '', NULL, NULL, NULL),
(1345, 'نهر سفلي', 'Lower River', 79, '', NULL, NULL, NULL),
(1346, 'بانجول', 'Banjul', 79, '', NULL, NULL, NULL),
(1347, 'كوروسا', 'Kouroussa', 80, '', NULL, NULL, NULL),
(1348, 'بيلا', 'Beyla', 80, '', NULL, NULL, NULL),
(1349, 'كوندارا', 'Koundara', 80, '', NULL, NULL, NULL),
(1350, 'دنجواياري', 'Dinguiraye', 80, '', NULL, NULL, NULL),
(1351, 'مالي', 'Mali', 80, '', NULL, NULL, NULL),
(1352, 'ماكنتا', 'Macenta', 80, '', NULL, NULL, NULL),
(1355, 'كيسيدوغو', 'Kissidougou', 80, '', NULL, NULL, NULL),
(1356, 'فوريكاريا', 'Forecariah', 80, '', NULL, NULL, NULL),
(1357, 'بيتا', 'Pita', 80, '', NULL, NULL, NULL),
(1361, 'دابولا', 'Dabola', 80, '', NULL, NULL, NULL),
(1362, 'بوكي', 'Boke', 80, '', NULL, NULL, NULL),
(1363, 'مامو', 'Mamou', 80, '', NULL, NULL, NULL),
(1364, 'فاراناه', 'Faranah', 80, '', NULL, NULL, NULL),
(1365, 'تليملي', 'Telimele', 80, '', NULL, NULL, NULL),
(1366, 'بوفا', 'Boffa', 80, '', NULL, NULL, NULL),
(1367, 'جوكيدو', 'Gueckedou', 80, '', NULL, NULL, NULL),
(1368, 'كنديا', 'Kindia', 80, '', NULL, NULL, NULL),
(1369, 'فريا', 'Fria', 80, '', NULL, NULL, NULL),
(1370, 'تواج', 'Tougue', 80, '', NULL, NULL, NULL),
(1371, 'يومو', 'Yomou', 80, '', NULL, NULL, NULL),
(1372, 'جاوال', 'Gaoual', 80, '', NULL, NULL, NULL),
(1373, 'كيروان', 'Kerouane', 80, '', NULL, NULL, NULL),
(1374, 'دالابا', 'Dalaba', 80, '', NULL, NULL, NULL),
(1375, 'كوناكري', 'Conakry', 80, '', NULL, NULL, NULL),
(1376, 'كويا', 'Coyah', 80, '', NULL, NULL, NULL),
(1377, 'دوبريكا', 'Dubreka', 80, '', NULL, NULL, NULL),
(1378, 'كانكان', 'Kankan', 80, '', NULL, NULL, NULL),
(1379, 'كوبيا', 'Koubia', 80, '', NULL, NULL, NULL),
(1380, 'ابي', 'Labe', 80, '', NULL, NULL, NULL),
(1381, 'يلوما', 'Lelouma', 80, '', NULL, NULL, NULL),
(1382, 'لولا', 'Lola', 80, '', NULL, NULL, NULL),
(1383, 'مانديانا', 'Mandiana', 80, '', NULL, NULL, NULL),
(1384, 'نزيريكوري', 'Nzerekore', 80, '', NULL, NULL, NULL),
(1385, 'سيجويري', 'Siguiri', 80, '', NULL, NULL, NULL),
(1387, 'سنترو سور', 'Centro Sur', 82, '', NULL, NULL, NULL),
(1388, 'ويلي-نزاس', 'Wele-Nzas', 82, '', NULL, NULL, NULL),
(1389, 'كي نتيم', 'Kie-Ntem', 82, '', NULL, NULL, NULL),
(1390, 'الساحلي', 'Litoral', 82, '', NULL, NULL, NULL),
(1391, 'أنوبون', 'Annobon', 82, '', NULL, NULL, NULL),
(1392, 'بيوكو نورتي', 'Bioko Norte', 82, '', NULL, NULL, NULL),
(1393, 'بيوكو سور', 'Bioko Sur', 82, '', NULL, NULL, NULL),
(1395, 'كيلكيس', 'Kilkis', 83, '', NULL, NULL, NULL),
(1396, 'لاريسا', 'Larisa', 83, '', NULL, NULL, NULL),
(1397, 'أتيكي', 'Attiki', 83, '', NULL, NULL, NULL),
(1398, 'تريكالا', 'Trikala', 83, '', NULL, NULL, NULL),
(1399, 'بريفيزا', 'Preveza', 83, '', NULL, NULL, NULL),
(1400, 'Kerkira', 'Kerkira', 83, '', NULL, NULL, NULL),
(1401, 'وانينا', 'Ioannina', 83, '', NULL, NULL, NULL),
(1402, 'بيلا', 'Pella', 83, '', NULL, NULL, NULL),
(1403, 'سالونيك', 'Thessaloniki', 83, '', NULL, NULL, NULL),
(1404, 'Voiotia', 'Voiotia', 83, '', NULL, NULL, NULL),
(1405, 'Kikladhes', 'Kikladhes', 83, '', NULL, NULL, NULL),
(1406, 'كافالا', 'Kavala', 83, '', NULL, NULL, NULL),
(1407, 'أرغوليس', 'Argolis', 83, '', NULL, NULL, NULL),
(1408, 'Rethimni', 'Rethimni', 83, '', NULL, NULL, NULL),
(1409, 'سيراي', 'Serrai', 83, '', NULL, NULL, NULL),
(1410, 'اكونيا', 'Lakonia', 83, '', NULL, NULL, NULL),
(1411, 'ايراكليون', 'Iraklion', 83, '', NULL, NULL, NULL),
(1412, 'اسيتي', 'Lasithi', 83, '', NULL, NULL, NULL),
(1413, 'Rodhopi', 'Rodhopi', 83, '', NULL, NULL, NULL),
(1414, 'دراما', 'Drama', 83, '', NULL, NULL, NULL),
(1415, 'ميسينيا', 'Messinia', 83, '', NULL, NULL, NULL),
(1416, 'إيفويا', 'Evvoia', 83, '', NULL, NULL, NULL),
(1417, 'Akhaia', 'Akhaia', 83, '', NULL, NULL, NULL),
(1418, 'ماغنيزيا', 'Magnisia', 83, '', NULL, NULL, NULL),
(1419, 'خانيا', 'Khania', 83, '', NULL, NULL, NULL),
(1420, 'Kardhitsa', 'Kardhitsa', 83, '', NULL, NULL, NULL),
(1421, 'إفروس', 'Evros', 83, '', NULL, NULL, NULL),
(1422, 'Arkadhia', 'Arkadhia', 83, '', NULL, NULL, NULL),
(1423, 'أيتوليا كاي Akarnania', 'Aitolia kai Akarnania', 83, '', NULL, NULL, NULL),
(1424, 'كوزاني', 'Kozani', 83, '', NULL, NULL, NULL),
(1425, 'ثريبروتيا', 'Thesprotia', 83, '', NULL, NULL, NULL),
(1426, 'يسفوس', 'Lesvos', 83, '', NULL, NULL, NULL),
(1427, 'Dhodhekanisos', 'Dhodhekanisos', 83, '', NULL, NULL, NULL),
(1428, 'كيفالونيا', 'Kefallinia', 83, '', NULL, NULL, NULL),
(1429, 'Khios', 'Khios', 83, '', NULL, NULL, NULL),
(1430, 'أرتا', 'Arta', 83, '', NULL, NULL, NULL),
(1431, 'غريفينا', 'Grevena', 83, '', NULL, NULL, NULL),
(1432, 'زاكينثوس', 'Zakinthos', 83, '', NULL, NULL, NULL),
(1433, 'Evritania', 'Evritania', 83, '', NULL, NULL, NULL),
(1434, 'فثيوتيس', 'Fthiotis', 83, '', NULL, NULL, NULL),
(1435, 'كاستوريا', 'Kastoria', 83, '', NULL, NULL, NULL),
(1436, 'ساموس', 'Samos', 83, '', NULL, NULL, NULL),
(1437, 'إيماثيا', 'Imathia', 83, '', NULL, NULL, NULL),
(1438, 'فلورينا', 'Florina', 83, '', NULL, NULL, NULL),
(1439, 'بييريا', 'Pieria', 83, '', NULL, NULL, NULL),
(1440, 'Levkas', 'Levkas', 83, '', NULL, NULL, NULL),
(1441, 'فوكيس', 'Fokis', 83, '', NULL, NULL, NULL),
(1442, 'إليا', 'Ilia', 83, '', NULL, NULL, NULL),
(1443, 'كورينثيا', 'Korinthia', 83, '', NULL, NULL, NULL),
(1444, 'كسانتي', 'Xanthi', 83, '', NULL, NULL, NULL),
(1445, 'Khalkidhiki', 'Khalkidhiki', 83, '', NULL, NULL, NULL),
(1448, 'ايزابال', 'Izabal', 85, '', NULL, NULL, NULL),
(1449, 'ألتا فيراباس', 'Alta Verapaz', 85, '', NULL, NULL, NULL),
(1450, 'ريتالهوليو', 'Retalhuleu', 85, '', NULL, NULL, NULL),
(1451, 'البروغريسو', 'El Progreso', 85, '', NULL, NULL, NULL),
(1452, 'غواتيمالا', 'Guatemala', 85, '', NULL, NULL, NULL),
(1453, 'جوتيابا', 'Jutiapa', 85, '', NULL, NULL, NULL),
(1454, 'تشيمالتنانغو', 'Chimaltenango', 85, '', NULL, NULL, NULL),
(1455, 'شيكيمولا', 'Chiquimula', 85, '', NULL, NULL, NULL),
(1456, 'زاكابا', 'Zacapa', 85, '', NULL, NULL, NULL),
(1457, 'جالابا', 'Jalapa', 85, '', NULL, NULL, NULL),
(1458, 'سان ماركوس', 'San Marcos', 85, '', NULL, NULL, NULL),
(1459, 'كيشي', 'Quiche', 85, '', NULL, NULL, NULL),
(1460, 'هوهوتنانغو', 'Huehuetenango', 85, '', NULL, NULL, NULL),
(1461, 'كويتزالتنانغو', 'Quetzaltenango', 85, '', NULL, NULL, NULL),
(1462, 'باجا فيراباز', 'Baja Verapaz', 85, '', NULL, NULL, NULL),
(1463, 'سانتا روزا', 'Santa Rosa', 85, '', NULL, NULL, NULL),
(1464, 'سولولا', 'Solola', 85, '', NULL, NULL, NULL),
(1465, 'بيتين', 'Peten', 85, '', NULL, NULL, NULL),
(1466, 'ايسكوينتلا', 'Escuintla', 85, '', NULL, NULL, NULL),
(1467, 'سكاتيبيكيز', 'Sacatepequez', 85, '', NULL, NULL, NULL),
(1468, 'توتونيكابان', 'Totonicapan', 85, '', NULL, NULL, NULL),
(1469, 'سوشيتبيكيز', 'Suchitepequez', 85, '', NULL, NULL, NULL),
(1470, 'كاشيو', 'Cacheu', 86, '', NULL, NULL, NULL),
(1471, 'بومبو', 'Biombo', 86, '', NULL, NULL, NULL),
(1472, 'أويو', 'Oio', 86, '', NULL, NULL, NULL),
(1473, 'بيساو', 'Bissau', 86, '', NULL, NULL, NULL),
(1474, 'بافاتا', 'Bafata', 86, '', NULL, NULL, NULL),
(1475, 'تومبالي', 'Tombali', 86, '', NULL, NULL, NULL),
(1476, 'غابو', 'Gabu', 86, '', NULL, NULL, NULL),
(1477, 'بولاما', 'Bolama', 86, '', NULL, NULL, NULL),
(1478, 'كينارا', 'Quinara', 86, '', NULL, NULL, NULL),
(1479, 'ماهايكا بيبريس', 'Mahaica-Berbice', 87, '', NULL, NULL, NULL),
(1480, 'Upper Takutu-Upper Essequibo', 'Upper Takutu-Upper Essequibo', 87, '', NULL, NULL, NULL),
(1481, 'باريما وايني', 'Barima-Waini', 87, '', NULL, NULL, NULL),
(1482, 'بومرون سوبينام', 'Pomeroon-Supenaam', 87, '', NULL, NULL, NULL),
(1483, 'ديميرارا ماهايكا', 'Demerara-Mahaica', 87, '', NULL, NULL, NULL),
(1484, 'جويوني مزروني', 'Cuyuni-Mazaruni', 87, '', NULL, NULL, NULL),
(1485, 'شرق بيربيس-كورنتي', 'East Berbice-Corentyne', 87, '', NULL, NULL, NULL),
(1486, 'Essequibo Islands-West Demerara', 'Essequibo Islands-West Demerara', 87, '', NULL, NULL, NULL),
(1487, 'بوتارو سيباروني', 'Potaro-Siparuni', 87, '', NULL, NULL, NULL),
(1488, 'Upper Demerara-Berbice', 'Upper Demerara-Berbice', 87, '', NULL, NULL, NULL),
(1490, 'القولون', 'Colon', 89, '', NULL, NULL, NULL),
(1491, 'تشولوتيكا', 'Choluteca', 89, '', NULL, NULL, NULL),
(1492, 'كوماياغوا', 'Comayagua', 89, '', NULL, NULL, NULL),
(1493, 'فالي', 'Valle', 89, '', NULL, NULL, NULL),
(1494, 'سانتا باربارا', 'Santa Barbara', 89, '', NULL, NULL, NULL),
(1495, 'فرانسيسكو مورازان', 'Francisco Morazan', 89, '', NULL, NULL, NULL),
(1496, 'الباريسو', 'El Paraiso', 89, '', NULL, NULL, NULL),
(1497, 'هندوراسي', 'Lempira', 89, '', NULL, NULL, NULL),
(1498, 'كوبان', 'Copan', 89, '', NULL, NULL, NULL),
(1499, 'اولانجو', 'Olancho', 89, '', NULL, NULL, NULL),
(1500, 'كورتيس', 'Cortes', 89, '', NULL, NULL, NULL),
(1501, 'يورو', 'Yoro', 89, '', NULL, NULL, NULL),
(1502, 'أتلانتيدا', 'Atlantida', 89, '', NULL, NULL, NULL),
(1503, 'Intibuca', 'Intibuca', 89, '', NULL, NULL, NULL),
(1504, 'لاباز', 'La Paz', 89, '', NULL, NULL, NULL),
(1505, 'أوكوتبيك', 'Ocotepeque', 89, '', NULL, NULL, NULL),
(1506, 'جراسياس ديوس', 'Gracias a Dios', 89, '', NULL, NULL, NULL),
(1507, 'ايسلاس دي لا باهيا', 'Islas de la Bahia', 89, '', NULL, NULL, NULL),
(1508, 'بريمورسكو غورانسكا', 'Primorsko-Goranska', 90, '', NULL, NULL, NULL),
(1509, 'سبليتسكو دالماتينسكا', 'Splitsko-Dalmatinska', 90, '', NULL, NULL, NULL),
(1510, 'Istarska', 'Istarska', 90, '', NULL, NULL, NULL),
(1511, 'أوسيجيكو', 'Osjecko-Baranjska', 90, '', NULL, NULL, NULL),
(1512, 'فيروفيتيكو-بودرافسكا', 'Viroviticko-Podravska', 90, '', NULL, NULL, NULL),
(1513, 'غراد زغرب', 'Grad Zagreb', 90, '', NULL, NULL, NULL),
(1514, 'سيساكو موسلافاكا', 'Sisacko-Moslavacka', 90, '', NULL, NULL, NULL),
(1515, 'ليكو سنجسكا', 'Licko-Senjska', 90, '', NULL, NULL, NULL),
(1516, 'برودسكو بوسافسكا', 'Brodsko-Posavska', 90, '', NULL, NULL, NULL),
(1517, 'دوبروفنيك نيريتفا', 'Dubrovacko-Neretvanska', 90, '', NULL, NULL, NULL),
(1518, 'بوزيسكو-سلافونسكا', 'Pozesko-Slavonska', 90, '', NULL, NULL, NULL),
(1519, 'زاجريباكا', 'Zagrebacka', 90, '', NULL, NULL, NULL),
(1520, 'بجيلوفارسكو بيلوجوورسكا', 'Bjelovarsko-Bilogorska', 90, '', NULL, NULL, NULL),
(1521, 'فارازدينسكا', 'Varazdinska', 90, '', NULL, NULL, NULL),
(1522, 'فوكوفارسكو سريمسكا', 'Vukovarsko-Srijemska', 90, '', NULL, NULL, NULL),
(1523, 'كاربينسكو زاجورسكا', 'Krapinsko-Zagorska', 90, '', NULL, NULL, NULL),
(1524, 'كوبرفنيكو كريزفاكا', 'Koprivnicko-Krizevacka', 90, '', NULL, NULL, NULL),
(1525, 'كارلوفاكا', 'Karlovacka', 90, '', NULL, NULL, NULL),
(1526, 'سيبينسكو كنينسكا', 'Sibensko-Kninska', 90, '', NULL, NULL, NULL),
(1527, 'ميديمرسكا', 'Medimurska', 90, '', NULL, NULL, NULL),
(1529, 'سود', 'Sud', 91, '', NULL, NULL, NULL),
(1530, 'مركز', 'Centre', 91, '', NULL, NULL, NULL),
(1532, 'كويست', 'Ouest', 91, '', NULL, NULL, NULL),
(1533, 'نورد', 'Nord', 91, '', NULL, NULL, NULL),
(1534, 'الإقليم الشمالي الغربي', 'Nord-Ouest', 91, '', NULL, NULL, NULL),
(1535, 'الشمال الشرقي', 'Nord-Est', 91, '', NULL, NULL, NULL),
(1536, 'الجنوب الشرقي', 'Sud-Est', 91, '', NULL, NULL, NULL),
(1537, 'أرتيبونيت', 'Artibonite', 91, '', NULL, NULL, NULL),
(1538, 'كومارم إسترجم', 'Komarom-Esztergom', 92, '', NULL, NULL, NULL),
(1539, 'فيجر', 'Fejer', 92, '', NULL, NULL, NULL),
(1540, 'جاز ناجيكن سزولنوك', 'Jasz-Nagykun-Szolnok', 92, '', NULL, NULL, NULL),
(1541, 'بارانيا', 'Baranya', 92, '', NULL, NULL, NULL),
(1542, 'سزابولكس زاتمار بيريج', 'Szabolcs-Szatmar-Bereg', 92, '', NULL, NULL, NULL),
(1543, 'هيفيز', 'Heves', 92, '', NULL, NULL, NULL),
(1544, 'بورسود أباوج زمبلين', 'Borsod-Abauj-Zemplen', 92, '', NULL, NULL, NULL),
(1545, 'جيور موسون سوبرون', 'Gyor-Moson-Sopron', 92, '', NULL, NULL, NULL),
(1546, 'الآفات', 'Pest', 92, '', NULL, NULL, NULL),
(1547, 'فيزبرم', 'Veszprem', 92, '', NULL, NULL, NULL),
(1548, 'البكالوريا كيسكون', 'Bacs-Kiskun', 92, '', NULL, NULL, NULL),
(1549, 'خدمات القيمة المضافة', 'Vas', 92, '', NULL, NULL, NULL),
(1550, 'هاجدو بيهار', 'Hajdu-Bihar', 92, '', NULL, NULL, NULL),
(1551, 'زالة', 'Zala', 92, '', NULL, NULL, NULL),
(1552, 'سوموغي', 'Somogy', 92, '', NULL, NULL, NULL),
(1553, 'تولنا', 'Tolna', 92, '', NULL, NULL, NULL),
(1554, 'نوجراد', 'Nograd', 92, '', NULL, NULL, NULL),
(1555, 'بودابست', 'Budapest', 92, '', NULL, NULL, NULL),
(1556, 'ميشكولتس', 'Miskolc', 92, '', NULL, NULL, NULL),
(1557, 'كسونجراد', 'Csongrad', 92, '', NULL, NULL, NULL),
(1558, 'ديبريسين', 'Debrecen', 92, '', NULL, NULL, NULL),
(1559, 'بيكيس', 'Bekes', 92, '', NULL, NULL, NULL),
(1560, 'سيجد', 'Szeged', 92, '', NULL, NULL, NULL),
(1561, 'بيكس', 'Pecs', 92, '', NULL, NULL, NULL),
(1562, 'جيور', 'Gyor', 92, '', NULL, NULL, NULL),
(1563, 'جاوا تيمور', 'Jawa Timur', 93, '', NULL, NULL, NULL),
(1565, 'سولاويزي تينجارا', 'Sulawesi Tenggara', 93, '', NULL, NULL, NULL),
(1567, 'نوسا تينجارا تيمور', 'Nusa Tenggara Timur', 93, '', NULL, NULL, NULL),
(1568, 'سولاويسي اوتارا', 'Sulawesi Utara', 93, '', NULL, NULL, NULL),
(1569, 'سومطرة بارات', 'Sumatera Barat', 93, '', NULL, NULL, NULL),
(1570, 'اتشيه', 'Aceh', 93, '', NULL, NULL, NULL),
(1571, 'سولاويزي تنجاه', 'Sulawesi Tengah', 93, '', NULL, NULL, NULL),
(1575, 'جاوا تينغاه', 'Jawa Tengah', 93, '', NULL, NULL, NULL),
(1576, 'جاوا بارات', 'Jawa Barat', 93, '', NULL, NULL, NULL),
(1577, 'بالي', 'Bali', 93, '', NULL, NULL, NULL),
(1579, 'بانتين', 'Banten', 93, '', NULL, NULL, NULL),
(1580, 'سومطرة اوتارا', 'Sumatera Utara', 93, '', NULL, NULL, NULL),
(1581, 'كاليمانتان تيمور', 'Kalimantan Timur', 93, '', NULL, NULL, NULL),
(1582, 'لامبونج', 'Lampung', 93, '', NULL, NULL, NULL),
(1583, 'نوسا تينجارا بارات', 'Nusa Tenggara Barat', 93, '', NULL, NULL, NULL),
(1584, 'كاليمانتان بارات', 'Kalimantan Barat', 93, '', NULL, NULL, NULL),
(1585, 'كاليمنتان Tengah', 'Kalimantan Tengah', 93, '', NULL, NULL, NULL),
(1587, 'بنجكولو', 'Bengkulu', 93, '', NULL, NULL, NULL),
(1588, 'جامبي', 'Jambi', 93, '', NULL, NULL, NULL),
(1589, 'كاليمانتان سيلاتان', 'Kalimantan Selatan', 93, '', NULL, NULL, NULL),
(1590, 'يوجياكرتا', 'Yogyakarta', 93, '', NULL, NULL, NULL),
(1591, 'جاكرتا رايا', 'Jakarta Raya', 93, '', NULL, NULL, NULL),
(1593, 'مالوكو', 'Maluku', 93, '', NULL, NULL, NULL),
(1594, 'غالواي', 'Galway', 94, '', NULL, NULL, NULL),
(1595, 'فلين', 'Cork', 94, '', NULL, NULL, NULL),
(1596, 'كيري', 'Kerry', 94, '', NULL, NULL, NULL),
(1597, 'اللمريكية قصيدة خماسية فكاهية', 'Limerick', 94, '', NULL, NULL, NULL),
(1598, 'لونجفورد', 'Longford', 94, '', NULL, NULL, NULL),
(1599, 'اويس', 'Laois', 94, '', NULL, NULL, NULL),
(1600, 'وترفورد', 'Waterford', 94, '', NULL, NULL, NULL),
(1601, 'مايو', 'Mayo', 94, '', NULL, NULL, NULL),
(1602, 'سليغو', 'Sligo', 94, '', NULL, NULL, NULL),
(1603, 'كيلدير', 'Kildare', 94, '', NULL, NULL, NULL),
(1604, 'دبلن', 'Dublin', 94, '', NULL, NULL, NULL),
(1605, 'ويكلو', 'Wicklow', 94, '', NULL, NULL, NULL),
(1606, 'كافان', 'Cavan', 94, '', NULL, NULL, NULL),
(1607, 'كيلكيني', 'Kilkenny', 94, '', NULL, NULL, NULL),
(1608, 'ويكسفورد', 'Wexford', 94, '', NULL, NULL, NULL),
(1609, 'كارلو', 'Carlow', 94, '', NULL, NULL, NULL),
(1610, 'أوفالي', 'Offaly', 94, '', NULL, NULL, NULL),
(1611, 'موناغان', 'Monaghan', 94, '', NULL, NULL, NULL),
(1612, 'يتريم', 'Leitrim', 94, '', NULL, NULL, NULL),
(1613, 'كلير', 'Clare', 94, '', NULL, NULL, NULL),
(1614, 'دونيجال', 'Donegal', 94, '', NULL, NULL, NULL),
(1615, 'لاوث', 'Louth', 94, '', NULL, NULL, NULL),
(1616, 'روسكومون', 'Roscommon', 94, '', NULL, NULL, NULL),
(1617, 'تيبيراري', 'Tipperary', 94, '', NULL, NULL, NULL),
(1618, 'ستميث', 'Westmeath', 94, '', NULL, NULL, NULL),
(1619, 'ميث', 'Meath', 94, '', NULL, NULL, NULL),
(1620, 'HaZafon', 'HaZafon', 95, '', NULL, NULL, NULL),
(1621, 'هدروم', 'HaDarom', 95, '', NULL, NULL, NULL),
(1622, 'هامركاز', 'HaMerkaz', 95, '', NULL, NULL, NULL),
(1623, 'أورشليم', 'Yerushalayim', 95, '', NULL, NULL, NULL),
(1624, 'تل أبيب', 'Tel Aviv', 95, '', NULL, NULL, NULL),
(1625, 'هيفا', 'Hefa', 95, '', NULL, NULL, NULL),
(1627, 'ولاية البنغال الغربية', 'West Bengal', 96, '', NULL, NULL, NULL),
(1628, 'أوتار براديش', 'Uttar Pradesh', 96, '', NULL, NULL, NULL),
(1629, 'البنجاب', 'Punjab', 96, '', NULL, NULL, NULL),
(1630, 'ماديا براديش', 'Madhya Pradesh', 96, '', NULL, NULL, NULL),
(1631, 'كارناتاكا', 'Karnataka', 96, '', NULL, NULL, NULL),
(1632, 'ماهاراشترا', 'Maharashtra', 96, '', NULL, NULL, NULL),
(1633, 'هاريانا', 'Haryana', 96, '', NULL, NULL, NULL),
(1634, 'أوتارانتشال', 'Uttarakhand', 96, '', NULL, NULL, NULL),
(1635, 'ولاية اندرا براديش', 'Andhra Pradesh', 96, '', NULL, NULL, NULL),
(1636, 'تريبورا', 'Tripura', 96, '', NULL, NULL, NULL),
(1637, 'تاميل نادو', 'Tamil Nadu', 96, '', NULL, NULL, NULL),
(1638, 'جامو وكشمير', 'Jammu and Kashmir', 96, '', NULL, NULL, NULL),
(1639, 'جزر أندامان ونيكوبار', 'Andaman and Nicobar Islands', 96, '', NULL, NULL, NULL),
(1640, 'أسام', 'Assam', 96, '', NULL, NULL, NULL),
(1641, 'تشهاتيسجاره', 'Chhattisgarh', 96, '', NULL, NULL, NULL),
(1642, 'راجستان', 'Rajasthan', 96, '', NULL, NULL, NULL),
(1643, 'غوا', 'Goa', 96, '', NULL, NULL, NULL),
(1644, 'بودوتشيري', 'Puducherry', 96, '', NULL, NULL, NULL),
(1645, 'غوجارات', 'Gujarat', 96, '', NULL, NULL, NULL),
(1646, 'ولاية كيرالا', 'Kerala', 96, '', NULL, NULL, NULL),
(1647, 'اروناتشال براديش', 'Arunachal Pradesh', 96, '', NULL, NULL, NULL),
(1648, 'أوريسا', 'Orissa', 96, '', NULL, NULL, NULL),
(1649, 'هيماشال براديش', 'Himachal Pradesh', 96, '', NULL, NULL, NULL),
(1650, 'بيهار', 'Bihar', 96, '', NULL, NULL, NULL),
(1651, 'ميغالايا', 'Meghalaya', 96, '', NULL, NULL, NULL),
(1652, 'ناجالاند', 'Nagaland', 96, '', NULL, NULL, NULL),
(1653, 'مانيبور', 'Manipur', 96, '', NULL, NULL, NULL),
(1654, 'ميزورام', 'Mizoram', 96, '', NULL, NULL, NULL),
(1655, 'جهارخاند', 'Jharkhand', 96, '', NULL, NULL, NULL),
(1657, 'دلهي', 'Delhi', 96, '', NULL, NULL, NULL),
(1658, 'دادرا وناغار هافيلي', 'Dadra and Nagar Haveli', 96, '', NULL, NULL, NULL),
(1660, 'دامان وديو', 'Daman and Diu', 96, '', NULL, NULL, NULL),
(1661, 'سيكيم', 'Sikkim', 96, '', NULL, NULL, NULL),
(1662, 'شانديغار', 'Chandigarh', 96, '', NULL, NULL, NULL),
(1663, 'اكشادويب', 'Lakshadweep', 96, '', NULL, NULL, NULL),
(1664, 'السليمانية', 'As Sulaymaniyah', 97, '', NULL, NULL, NULL),
(1665, 'ذي قار', 'Dhi Qar', 97, '', NULL, NULL, NULL),
(1666, 'ميسان', 'Maysan', 97, '', NULL, NULL, NULL),
(1667, 'ديالى', 'Diyala', 97, '', NULL, NULL, NULL),
(1668, 'بغداد', 'Baghdad', 97, '', NULL, NULL, NULL),
(1669, 'أكانت', 'Wasit', 97, '', NULL, NULL, NULL),
(1670, 'صلاح الدين', 'Salah ad Din', 97, '', NULL, NULL, NULL),
(1671, 'القادسية', 'Al Qadisiyah', 97, '', NULL, NULL, NULL),
(1672, 'بابل', 'Babil', 97, '', NULL, NULL, NULL),
(1673, 'كربلاء', 'Karbala\'', 97, '', NULL, NULL, NULL),
(1674, 'النجف', 'An Najaf', 97, '', NULL, NULL, NULL),
(1675, 'المثنى', 'Al Muthanna', 97, '', NULL, NULL, NULL),
(1676, 'الانبار', 'Al Anbar', 97, '', NULL, NULL, NULL),
(1677, 'دهوك', 'Dahuk', 97, '', NULL, NULL, NULL),
(1678, 'نينوى', 'Ninawa', 97, '', NULL, NULL, NULL),
(1679, 'اربيل', 'Arbil', 97, '', NULL, NULL, NULL),
(1680, 'البصرة', 'Al Basrah', 97, '', NULL, NULL, NULL),
(1681, 'في التميم', 'At Ta\'mim', 97, '', NULL, NULL, NULL),
(1682, 'زنجان', 'Zanjan', 98, '', NULL, NULL, NULL),
(1683, 'أزربايجان بختاري', 'Azarbayjan-e Bakhtari', 98, '', NULL, NULL, NULL),
(1684, 'يزد', 'Yazd', 98, '', NULL, NULL, NULL),
(1685, 'خوزستان', 'Khuzestan', 98, '', NULL, NULL, NULL),
(1686, 'أصفهان', 'Esfahan', 98, '', NULL, NULL, NULL),
(1687, 'أردبيل', 'Ardabil', 98, '', NULL, NULL, NULL),
(1688, 'طهران', 'Tehran', 98, '', NULL, NULL, NULL),
(1689, 'شرق ازربايجان', 'East Azarbaijan', 98, '', NULL, NULL, NULL),
(1690, 'بوشهر', 'Bushehr', 98, '', NULL, NULL, NULL),
(1691, 'هرمزكان', 'Hormozgan', 98, '', NULL, NULL, NULL),
(1692, 'مازندران', 'Mazandaran', 98, '', NULL, NULL, NULL),
(1693, 'كرمان', 'Kerman', 98, '', NULL, NULL, NULL),
(1694, 'فارس', 'Fars', 98, '', NULL, NULL, NULL),
(1695, 'Kohkiluyeh va Buyer Ahmadi', 'Kohkiluyeh va Buyer Ahmadi', 98, '', NULL, NULL, NULL),
(1696, 'خراسان', 'Khorasan', 98, '', NULL, NULL, NULL),
(1697, 'سيستان وبلوتشستان', 'Sistan va Baluchestan', 98, '', NULL, NULL, NULL),
(1698, 'Chahar Mahall va Bakhtiari', 'Chahar Mahall va Bakhtiari', 98, '', NULL, NULL, NULL),
(1699, 'كرمان', 'Kerman', 98, '', NULL, NULL, NULL),
(1700, 'مازندران', 'Mazandaran', 98, '', NULL, NULL, NULL),
(1701, 'قزوين', 'Qazvin', 98, '', NULL, NULL, NULL),
(1702, 'زنجان', 'Zanjan', 98, '', NULL, NULL, NULL),
(1703, 'المركزي', 'Markazi', 98, '', NULL, NULL, NULL),
(1704, 'المركزي', 'Markazi', 98, '', NULL, NULL, NULL),
(1705, 'ورستان', 'Lorestan', 98, '', NULL, NULL, NULL),
(1706, 'المركزي', 'Markazi', 98, '', NULL, NULL, NULL),
(1707, 'خراسان رضوي', 'Khorasan-e Razavi', 98, '', NULL, NULL, NULL),
(1708, 'همدان', 'Hamadan', 98, '', NULL, NULL, NULL),
(1709, 'سمنان', 'Semnan', 98, '', NULL, NULL, NULL),
(1710, 'جيلان', 'Gilan', 98, '', NULL, NULL, NULL),
(1711, 'كردستان', 'Kordestan', 98, '', NULL, NULL, NULL),
(1712, 'Bakhtaran', 'Bakhtaran', 98, '', NULL, NULL, NULL),
(1713, 'إيلام', 'Ilam', 98, '', NULL, NULL, NULL),
(1714, 'مقاطعة سمنان', 'Semnan Province', 98, '', NULL, NULL, NULL),
(1715, 'كلستان', 'Golestan', 98, '', NULL, NULL, NULL),
(1716, 'قم', 'Qom', 98, '', NULL, NULL, NULL),
(1718, 'زنجان', 'Zanjan', 98, '', NULL, NULL, NULL),
(1720, 'Skagafjardarsysla', 'Skagafjardarsysla', 99, '', NULL, NULL, NULL),
(1721, 'Borgarfjardarsysla', 'Borgarfjardarsysla', 99, '', NULL, NULL, NULL),
(1722, 'Myrasysla', 'Myrasysla', 99, '', NULL, NULL, NULL),
(1723, 'Rangarvallasysla', 'Rangarvallasysla', 99, '', NULL, NULL, NULL),
(1724, 'Eyjafjardarsysla', 'Eyjafjardarsysla', 99, '', NULL, NULL, NULL),
(1725, 'Kjosarsysla', 'Kjosarsysla', 99, '', NULL, NULL, NULL),
(1726, 'Vestur-Isafjardarsysla', 'Vestur-Isafjardarsysla', 99, '', NULL, NULL, NULL),
(1728, 'Strandasysla', 'Strandasysla', 99, '', NULL, NULL, NULL),
(1729, 'Gullbringusysla', 'Gullbringusysla', 99, '', NULL, NULL, NULL),
(1730, 'Austur-Hunavatnssysla', 'Austur-Hunavatnssysla', 99, '', NULL, NULL, NULL),
(1731, 'Austur-Skaftafellssysla', 'Austur-Skaftafellssysla', 99, '', NULL, NULL, NULL),
(1732, 'Nordur-Mulasysla', 'Nordur-Mulasysla', 99, '', NULL, NULL, NULL),
(1733, 'Sudur-Mulasysla', 'Sudur-Mulasysla', 99, '', NULL, NULL, NULL),
(1734, 'Vestur-Bardastrandarsysla', 'Vestur-Bardastrandarsysla', 99, '', NULL, NULL, NULL),
(1735, 'Snafellsnes- og Hnappadalssysla', 'Snafellsnes- og Hnappadalssysla', 99, '', NULL, NULL, NULL),
(1736, 'Arnessysla', 'Arnessysla', 99, '', NULL, NULL, NULL),
(1737, 'Vestur-Hunavatnssysla', 'Vestur-Hunavatnssysla', 99, '', NULL, NULL, NULL),
(1738, 'Sudur-Tingeyjarsysla', 'Sudur-Tingeyjarsysla', 99, '', NULL, NULL, NULL),
(1740, 'Vestur-Skaftafellssysla', 'Vestur-Skaftafellssysla', 99, '', NULL, NULL, NULL),
(1742, 'Nordur-Tingeyjarsysla', 'Nordur-Tingeyjarsysla', 99, '', NULL, NULL, NULL),
(1743, 'توسكانا', 'Toscana', 100, '', NULL, NULL, NULL),
(1744, 'فينيتو', 'Veneto', 100, '', NULL, NULL, NULL),
(1745, 'كامبانيا', 'Campania', 100, '', NULL, NULL, NULL),
(1746, 'مارتش', 'Marche', 100, '', NULL, NULL, NULL),
(1747, 'بيمونتي', 'Piemonte', 100, '', NULL, NULL, NULL),
(1748, 'لومبارديا', 'Lombardia', 100, '', NULL, NULL, NULL),
(1749, 'ساردينيا', 'Sardegna', 100, '', NULL, NULL, NULL),
(1750, 'أبروتسو', 'Abruzzi', 100, '', NULL, NULL, NULL),
(1751, 'إيميليا-رومانيا', 'Emilia-Romagna', 100, '', NULL, NULL, NULL),
(1752, 'ترينتينو ألتو أديجي', 'Trentino-Alto Adige', 100, '', NULL, NULL, NULL),
(1753, 'أومبريا', 'Umbria', 100, '', NULL, NULL, NULL),
(1754, 'باسيليكاتا', 'Basilicata', 100, '', NULL, NULL, NULL),
(1755, 'بوليا', 'Puglia', 100, '', NULL, NULL, NULL),
(1756, 'صقلية', 'Sicilia', 100, '', NULL, NULL, NULL),
(1757, 'لاتسيو', 'Lazio', 100, '', NULL, NULL, NULL),
(1758, 'ليغوريا', 'Liguria', 100, '', NULL, NULL, NULL),
(1759, 'كالابريا', 'Calabria', 100, '', NULL, NULL, NULL),
(1760, 'موليز', 'Molise', 100, '', NULL, NULL, NULL),
(1761, 'فريولي فينيتسيا جوليا', 'Friuli-Venezia Giulia', 100, '', NULL, NULL, NULL),
(1762, 'فالي أوستا', 'Valle d\'Aosta', 100, '', NULL, NULL, NULL),
(1764, 'سانت آن', 'Saint Ann', 101, '', NULL, NULL, NULL),
(1765, 'سانت إليزابيث', 'Saint Elizabeth', 101, '', NULL, NULL, NULL),
(1766, 'هانوفر', 'Hanover', 101, '', NULL, NULL, NULL),
(1767, 'يستمورلاند', 'Westmoreland', 101, '', NULL, NULL, NULL),
(1768, 'تريلاوني', 'Trelawny', 101, '', NULL, NULL, NULL),
(1769, 'مانشستر', 'Manchester', 101, '', NULL, NULL, NULL),
(1770, 'جيمس قديس', 'Saint James', 101, '', NULL, NULL, NULL),
(1771, 'القديس أندرو', 'Saint Andrew', 101, '', NULL, NULL, NULL),
(1772, 'سانت توماس', 'Saint Thomas', 101, '', NULL, NULL, NULL),
(1773, 'القديس ماري', 'Saint Mary', 101, '', NULL, NULL, NULL),
(1774, 'بورتلاند', 'Portland', 101, '', NULL, NULL, NULL),
(1775, 'كلارندون', 'Clarendon', 101, '', NULL, NULL, NULL),
(1776, 'سانت كاترين', 'Saint Catherine', 101, '', NULL, NULL, NULL),
(1777, 'كينغستون', 'Kingston', 101, '', NULL, NULL, NULL),
(1779, 'في الطفيلة', 'At Tafilah', 102, '', NULL, NULL, NULL),
(1782, 'الكرك', 'Al Karak', 102, '', NULL, NULL, NULL),
(1784, 'البلقاء', 'Al Balqa\'', 102, '', NULL, NULL, NULL),
(1786, 'عمان', 'Amman', 102, '', NULL, NULL, NULL),
(1787, 'العقبة', 'Al Aqabah', 102, '', NULL, NULL, NULL),
(1788, 'أوكيناوا', 'Okinawa', 103, '', NULL, NULL, NULL),
(1789, 'ناغازاكي', 'Nagasaki', 103, '', NULL, NULL, NULL),
(1790, 'هوكايدو', 'Hokkaido', 103, '', NULL, NULL, NULL),
(1791, 'توكوشيما', 'Tokushima', 103, '', NULL, NULL, NULL),
(1792, 'مي', 'Mie', 103, '', NULL, NULL, NULL),
(1793, 'كاناغاوا', 'Kanagawa', 103, '', NULL, NULL, NULL),
(1794, 'شيبا', 'Chiba', 103, '', NULL, NULL, NULL),
(1795, 'هيوغو', 'Hyogo', 103, '', NULL, NULL, NULL),
(1796, 'ياماغوتشي', 'Yamaguchi', 103, '', NULL, NULL, NULL),
(1797, 'أوموري', 'Aomori', 103, '', NULL, NULL, NULL),
(1798, 'ميازاكي', 'Miyazaki', 103, '', NULL, NULL, NULL),
(1799, 'شيزوكا', 'Shizuoka', 103, '', NULL, NULL, NULL),
(1800, 'شيمان', 'Shimane', 103, '', NULL, NULL, NULL),
(1801, 'فوكوشيما', 'Fukushima', 103, '', NULL, NULL, NULL),
(1802, 'أوكاياما', 'Okayama', 103, '', NULL, NULL, NULL),
(1803, 'شيجا', 'Shiga', 103, '', NULL, NULL, NULL),
(1804, 'كاجوشيما', 'Kagoshima', 103, '', NULL, NULL, NULL),
(1805, 'هيروشيما', 'Hiroshima', 103, '', NULL, NULL, NULL),
(1806, 'توتوري', 'Tottori', 103, '', NULL, NULL, NULL),
(1807, 'اكيتا', 'Akita', 103, '', NULL, NULL, NULL),
(1808, 'ناغانو', 'Nagano', 103, '', NULL, NULL, NULL),
(1809, 'فوكوي', 'Fukui', 103, '', NULL, NULL, NULL),
(1810, 'سايتاما', 'Saitama', 103, '', NULL, NULL, NULL),
(1811, 'واكاياما', 'Wakayama', 103, '', NULL, NULL, NULL),
(1812, 'كوتشي', 'Kochi', 103, '', NULL, NULL, NULL),
(1813, 'ايواتي', 'Iwate', 103, '', NULL, NULL, NULL),
(1814, 'مياجي', 'Miyagi', 103, '', NULL, NULL, NULL),
(1815, 'نيجاتا', 'Niigata', 103, '', NULL, NULL, NULL),
(1816, 'صمغة', 'Gumma', 103, '', NULL, NULL, NULL),
(1817, 'أيشي', 'Aichi', 103, '', NULL, NULL, NULL),
(1818, 'توياما', 'Toyama', 103, '', NULL, NULL, NULL),
(1819, 'كوماموتو', 'Kumamoto', 103, '', NULL, NULL, NULL),
(1820, 'كاغاوا', 'Kagawa', 103, '', NULL, NULL, NULL),
(1821, 'ايمى', 'Ehime', 103, '', NULL, NULL, NULL),
(1822, 'طوكيو', 'Tokyo', 103, '', NULL, NULL, NULL),
(1823, 'فوكوكا', 'Fukuoka', 103, '', NULL, NULL, NULL),
(1824, 'توتشيغي', 'Tochigi', 103, '', NULL, NULL, NULL),
(1825, 'ياماغاتا', 'Yamagata', 103, '', NULL, NULL, NULL),
(1826, 'قصة طويلة', 'Saga', 103, '', NULL, NULL, NULL),
(1827, 'أويتا', 'Oita', 103, '', NULL, NULL, NULL),
(1828, 'جيفو', 'Gifu', 103, '', NULL, NULL, NULL),
(1829, 'إيشيكاوا', 'Ishikawa', 103, '', NULL, NULL, NULL),
(1830, 'نارا', 'Nara', 103, '', NULL, NULL, NULL),
(1831, 'ايباراكي', 'Ibaraki', 103, '', NULL, NULL, NULL),
(1832, 'كيوتو', 'Kyoto', 103, '', NULL, NULL, NULL),
(1833, 'ياماناشي', 'Yamanashi', 103, '', NULL, NULL, NULL),
(1834, 'أوساكا', 'Osaka', 103, '', NULL, NULL, NULL),
(1835, 'ساحل', 'Coast', 104, '', NULL, NULL, NULL),
(1836, 'نيانزا', 'Nyanza', 104, '', NULL, NULL, NULL),
(1837, 'الوادي المتصدع', 'Rift Valley', 104, '', NULL, NULL, NULL),
(1838, 'الغربي', 'Western', 104, '', NULL, NULL, NULL),
(1839, 'شمال شرق', 'North-Eastern', 104, '', NULL, NULL, NULL),
(1840, 'الشرقية', 'Eastern', 104, '', NULL, NULL, NULL),
(1841, 'منطقة نيروبي', 'Nairobi Area', 104, '', NULL, NULL, NULL),
(1842, 'وسط', 'Central', 104, '', NULL, NULL, NULL),
(1843, 'جلال آباد', 'Jalal-Abad', 105, '', NULL, NULL, NULL),
(1844, 'نارين', 'Naryn', 105, '', NULL, NULL, NULL),
(1845, 'أوش', 'Osh', 105, '', NULL, NULL, NULL),
(1846, 'تشوي', 'Chuy', 105, '', NULL, NULL, NULL),
(1847, 'يسيك-كول', 'Ysyk-Kol', 105, '', NULL, NULL, NULL),
(1848, 'بيشكيك', 'Bishkek', 105, '', NULL, NULL, NULL),
(1849, 'تالاس', 'Talas', 105, '', NULL, NULL, NULL),
(1850, 'باتكن', 'Batken', 105, '', NULL, NULL, NULL),
(1852, 'سيم ريب', 'Siem Reap', 106, '', NULL, NULL, NULL),
(1853, 'كراتي', 'Kracheh', 106, '', NULL, NULL, NULL),
(1854, 'كامبونغ ثوم', 'Kampong Thum', 106, '', NULL, NULL, NULL),
(1855, 'كامبونج شنانج', 'Kampong Chhnang', 106, '', NULL, NULL, NULL),
(1857, 'كامبونج تشام', 'Kampong Cham', 106, '', NULL, NULL, NULL),
(1858, 'كامبونج سبيو', 'Kampong Speu', 106, '', NULL, NULL, NULL),
(1859, 'اتخاذ س', 'Takeo', 106, '', NULL, NULL, NULL),
(1860, 'باتامبانغ', 'Batdambang', 106, '', NULL, NULL, NULL),
(1861, 'بريى فنج', 'Prey Veng', 106, '', NULL, NULL, NULL),
(1862, 'راتاناكيري كيري', 'Ratanakiri Kiri', 106, '', NULL, NULL, NULL),
(1863, 'سفاي رينج', 'Svay Rieng', 106, '', NULL, NULL, NULL),
(1864, 'كوه كونغ', 'Koh Kong', 106, '', NULL, NULL, NULL),
(1865, 'بورسات', 'Pursat', 106, '', NULL, NULL, NULL),
(1866, 'بنوم بنه', 'Phnum Penh', 106, '', NULL, NULL, NULL),
(1867, 'موندولكيري', 'Mondulkiri', 106, '', NULL, NULL, NULL),
(1868, 'ستونغ ترينغ', 'Stung Treng', 106, '', NULL, NULL, NULL),
(1869, 'كامبوت', 'Kampot', 106, '', NULL, NULL, NULL),
(1870, 'بانتي ميانشي', 'Banteay Meanchey', 106, '', NULL, NULL, NULL),
(1871, 'برياه فيهيار', 'Preah Vihear', 106, '', NULL, NULL, NULL),
(1872, 'كاندال', 'Kandal', 106, '', NULL, NULL, NULL),
(1874, 'أنجوان', 'Anjouan', 108, '', NULL, NULL, NULL),
(1875, 'موهيلي', 'Moheli', 108, '', NULL, NULL, NULL),
(1876, 'القمر الكبرى', 'Grande Comore', 108, '', NULL, NULL, NULL),
(1877, 'سانت جورج جينجيرلاند', 'Saint George Gingerland', 109, '', NULL, NULL, NULL),
(1878, 'سانت جيمس ويندوارد', 'Saint James Windward', 109, '', NULL, NULL, NULL),
(1879, 'سانت توماس لوولاند', 'Saint Thomas Lowland', 109, '', NULL, NULL, NULL),
(1880, 'سانت جورج باسيتير', 'Saint George Basseterre', 109, '', NULL, NULL, NULL),
(1881, 'القديس يوحنا فيجترى', 'Saint John Figtree', 109, '', NULL, NULL, NULL),
(1882, 'القديس بطرس باستير', 'Saint Peter Basseterre', 109, '', NULL, NULL, NULL),
(1883, 'القديس يوحنا كابيستر', 'Saint John Capisterre', 109, '', NULL, NULL, NULL),
(1884, 'كنيسة المسيح نيقولا تاون', 'Christ Church Nichola Town', 109, '', NULL, NULL, NULL),
(1885, 'الثالوث بالميتو بوينت', 'Trinity Palmetto Point', 109, '', NULL, NULL, NULL),
(1886, 'سانت آن ساندي بوينت', 'Saint Anne Sandy Point', 109, '', NULL, NULL, NULL),
(1887, 'سانت ماري كايون', 'Saint Mary Cayon', 109, '', NULL, NULL, NULL),
(1888, 'جزيرة سانت توماس الوسطى', 'Saint Thomas Middle Island', 109, '', NULL, NULL, NULL),
(1889, 'سانت بول كابيستر', 'Saint Paul Capisterre', 109, '', NULL, NULL, NULL),
(1890, 'P\'yongan-نامدو', 'P\'yongan-namdo', 110, '', NULL, NULL, NULL),
(1891, 'P\'yongan-bukto', 'P\'yongan-bukto', 110, '', NULL, NULL, NULL),
(1892, 'P\'yongyang-سي', 'P\'yongyang-si', 110, '', NULL, NULL, NULL),
(1893, 'كانج وون دو', 'Kangwon-do', 110, '', NULL, NULL, NULL),
(1894, 'هوانغهاي-bukto', 'Hwanghae-bukto', 110, '', NULL, NULL, NULL),
(1895, 'هامكيونغ-نامدو', 'Hamgyong-namdo', 110, '', NULL, NULL, NULL),
(1896, 'تشاغانغ دو', 'Chagang-do', 110, '', NULL, NULL, NULL),
(1897, 'هامكيونغ-bukto', 'Hamgyong-bukto', 110, '', NULL, NULL, NULL),
(1898, 'هوانغهاي-نامدو', 'Hwanghae-namdo', 110, '', NULL, NULL, NULL),
(1899, 'Namp\'o-سي', 'Namp\'o-si', 110, '', NULL, NULL, NULL),
(1900, 'كايسونج، الاشتراكية', 'Kaesong-si', 110, '', NULL, NULL, NULL),
(1901, 'يانجانج دو', 'Yanggang-do', 110, '', NULL, NULL, NULL),
(1902, 'ناجين سونبونج سي', 'Najin Sonbong-si', 110, '', NULL, NULL, NULL),
(1903, 'Ch\'ungch\'ong-bukto', 'Ch\'ungch\'ong-bukto', 111, '', NULL, NULL, NULL),
(1904, 'كانج وون دو', 'Kangwon-do', 111, '', NULL, NULL, NULL);
INSERT INTO `cities` (`id`, `name_ar`, `name_en`, `country_id`, `key`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1905, 'Ch\'ungch\'ong-نامدو', 'Ch\'ungch\'ong-namdo', 111, '', NULL, NULL, NULL),
(1906, 'كيونجسانج-bukto', 'Kyongsang-bukto', 111, '', NULL, NULL, NULL),
(1907, 'تشولا-نامدو', 'Cholla-namdo', 111, '', NULL, NULL, NULL),
(1908, 'كيونجي دو', 'Kyonggi-do', 111, '', NULL, NULL, NULL),
(1909, 'تشيجو دو', 'Cheju-do', 111, '', NULL, NULL, NULL),
(1910, 'تشولا-bukto', 'Cholla-bukto', 111, '', NULL, NULL, NULL),
(1911, 'سول-t\'ukpyolsi', 'Seoul-t\'ukpyolsi', 111, '', NULL, NULL, NULL),
(1912, 'كيونجسانج-نامدو', 'Kyongsang-namdo', 111, '', NULL, NULL, NULL),
(1913, 'تايجو-jikhalsi', 'Taegu-jikhalsi', 111, '', NULL, NULL, NULL),
(1914, 'بوسان-jikhalsi', 'Pusan-jikhalsi', 111, '', NULL, NULL, NULL),
(1915, 'كوانجو-jikhalsi', 'Kwangju-jikhalsi', 111, '', NULL, NULL, NULL),
(1916, 'أولسان-gwangyoksi', 'Ulsan-gwangyoksi', 111, '', NULL, NULL, NULL),
(1917, 'إنشون-jikhalsi', 'Inch\'on-jikhalsi', 111, '', NULL, NULL, NULL),
(1918, 'تايجون-jikhalsi', 'Taejon-jikhalsi', 111, '', NULL, NULL, NULL),
(1919, 'الكوييت', 'Al Kuwayt', 112, '', NULL, NULL, NULL),
(1920, 'الجهراء', 'Al Jahra', 112, '', NULL, NULL, NULL),
(1923, 'ألماتي', 'Almaty', 114, '', NULL, NULL, NULL),
(1924, 'جنوب كازاخستان', 'South Kazakhstan', 114, '', NULL, NULL, NULL),
(1925, 'شمال كازاخستان', 'North Kazakhstan', 114, '', NULL, NULL, NULL),
(1926, 'بافلودار', 'Pavlodar', 114, '', NULL, NULL, NULL),
(1927, 'كاراجهاندي', 'Qaraghandy', 114, '', NULL, NULL, NULL),
(1928, 'كيزيلورودا', 'Qyzylorda', 114, '', NULL, NULL, NULL),
(1929, 'شرق كازاخستان', 'East Kazakhstan', 114, '', NULL, NULL, NULL),
(1930, 'أكمولا', 'Aqmola', 114, '', NULL, NULL, NULL),
(1931, 'أكتوب', 'Aqtobe', 114, '', NULL, NULL, NULL),
(1932, 'كوستاناي', 'Qostanay', 114, '', NULL, NULL, NULL),
(1933, 'غرب كازاخستان', 'West Kazakhstan', 114, '', NULL, NULL, NULL),
(1934, 'أتيراو', 'Atyrau', 114, '', NULL, NULL, NULL),
(1935, 'Zhambyl', 'Zhambyl', 114, '', NULL, NULL, NULL),
(1936, 'أستانا', 'Astana', 114, '', NULL, NULL, NULL),
(1937, 'مانجهيستاو', 'Mangghystau', 114, '', NULL, NULL, NULL),
(1938, 'مدينة ألماتي', 'Almaty City', 114, '', NULL, NULL, NULL),
(1939, 'Bayqonyr', 'Bayqonyr', 114, '', NULL, NULL, NULL),
(1941, 'سافاناخيت', 'Savannakhet', 115, '', NULL, NULL, NULL),
(1942, 'فونغسالي', 'Phongsali', 115, '', NULL, NULL, NULL),
(1943, 'سروان', 'Saravan', 115, '', NULL, NULL, NULL),
(1946, 'هوافان', 'Houaphan', 115, '', NULL, NULL, NULL),
(1947, 'أتابو', 'Attapu', 115, '', NULL, NULL, NULL),
(1949, 'تشامباساك', 'Champasak', 115, '', NULL, NULL, NULL),
(1950, 'وانجفرابانج', 'Louangphrabang', 115, '', NULL, NULL, NULL),
(1951, 'أودومكساي', 'Oudomxai', 115, '', NULL, NULL, NULL),
(1955, 'زيانجكوانج', 'Xiangkhoang', 115, '', NULL, NULL, NULL),
(1956, 'فينتيان', 'Vientiane', 115, '', NULL, NULL, NULL),
(1960, 'Xaignabouri', 'Xaignabouri', 115, '', NULL, NULL, NULL),
(1961, 'خاموان', 'Khammouan', 115, '', NULL, NULL, NULL),
(1966, 'شمال لبنان', 'Liban-Nord', 116, '', NULL, NULL, NULL),
(1967, 'الجنوب', 'Al Janub', 116, '', NULL, NULL, NULL),
(1968, 'بيروت', 'Beyrouth', 116, '', NULL, NULL, NULL),
(1969, 'جبل لبنان', 'Mont-Liban', 116, '', NULL, NULL, NULL),
(1970, 'البقاع', 'Beqaa', 116, '', NULL, NULL, NULL),
(1971, 'لبنان-سود', 'Liban-Sud', 116, '', NULL, NULL, NULL),
(1972, 'ميكو', 'Micoud', 117, '', NULL, NULL, NULL),
(1973, 'لابوري', 'Laborie', 117, '', NULL, NULL, NULL),
(1974, 'دينيري', 'Dennery', 117, '', NULL, NULL, NULL),
(1975, 'آنس-لا-راي', 'Anse-la-Raye', 117, '', NULL, NULL, NULL),
(1976, 'فيو فورت', 'Vieux-Fort', 117, '', NULL, NULL, NULL),
(1977, 'كاستري', 'Castries', 117, '', NULL, NULL, NULL),
(1978, 'سوفرير', 'Soufriere', 117, '', NULL, NULL, NULL),
(1979, 'جروس-جزيرة', 'Gros-Islet', 117, '', NULL, NULL, NULL),
(1980, 'تشويسيول', 'Choiseul', 117, '', NULL, NULL, NULL),
(1981, 'الدوفين الابن البكر لملك فرنسي', 'Dauphin', 117, '', NULL, NULL, NULL),
(1982, 'براسلين', 'Praslin', 117, '', NULL, NULL, NULL),
(1983, 'بلزرس', 'Balzers', 118, '', NULL, NULL, NULL),
(1984, 'جمبرين', 'Gamprin', 118, '', NULL, NULL, NULL),
(1985, 'بلانكن', 'Planken', 118, '', NULL, NULL, NULL),
(1986, 'فادوز', 'Vaduz', 118, '', NULL, NULL, NULL),
(1987, 'اشن', 'Eschen', 118, '', NULL, NULL, NULL),
(1988, 'تريسنبرغ', 'Triesenberg', 118, '', NULL, NULL, NULL),
(1989, 'شلينبرغ', 'Schellenberg', 118, '', NULL, NULL, NULL),
(1990, 'مورن', 'Mauren', 118, '', NULL, NULL, NULL),
(1991, 'الرياض', 'Riyadh', 178, NULL, NULL, '2019-03-31 12:13:51', '2019-03-31 12:13:51'),
(1992, 'مكه', 'Makkah', 178, NULL, NULL, '2019-03-31 12:29:46', '2019-03-31 12:29:46'),
(1993, 'المدينة المنورة', 'Medina', 178, NULL, NULL, '2019-03-31 12:30:46', '2019-03-31 12:30:46'),
(1994, 'بريدة', 'Buraidah', 178, NULL, NULL, '2019-03-31 12:31:22', '2019-03-31 12:31:22'),
(1995, 'تبوك', 'Tabuk', 178, NULL, NULL, '2019-03-31 12:32:12', '2019-03-31 12:32:12'),
(1996, 'الدمام', 'Dammam', 178, NULL, NULL, '2019-03-31 12:32:44', '2019-03-31 12:32:44'),
(1997, 'الاحساء', 'Hasa', 178, NULL, NULL, '2019-03-31 12:33:21', '2019-03-31 12:33:21'),
(1998, 'القطيف', 'Qatif', 178, NULL, NULL, '2019-03-31 12:33:59', '2019-03-31 12:33:59'),
(1999, 'خميس مشيط', 'Khamis Mushait', 178, NULL, NULL, '2019-03-31 12:35:05', '2019-03-31 12:35:05'),
(2000, 'الطائف', 'Taif', 178, NULL, NULL, '2019-03-31 12:35:43', '2019-03-31 12:35:43'),
(2001, 'نجران', 'Najran', 178, NULL, NULL, '2019-03-31 12:36:13', '2019-03-31 12:36:13'),
(2002, 'حفر الباطن', 'Hafr Al Batin', 178, NULL, NULL, '2019-03-31 12:36:51', '2019-03-31 12:36:51'),
(2003, 'الجبيل', 'Jubail', 178, NULL, NULL, '2019-03-31 12:37:28', '2019-03-31 12:37:28'),
(2004, 'ضباء', 'Duba', 178, NULL, NULL, '2019-03-31 12:38:08', '2019-03-31 12:38:08'),
(2005, 'ضباء', 'Duba', 178, NULL, NULL, '2019-03-31 12:38:12', '2019-03-31 12:38:12'),
(2006, 'الخرج', 'alkharaj', 178, NULL, NULL, '2019-03-31 12:39:06', '2019-03-31 12:39:06'),
(2007, 'الثقبة', 'althaqaba', 178, NULL, NULL, '2019-03-31 12:39:42', '2019-03-31 12:39:42'),
(2008, 'ينبع البحر', 'yanbae albahr', 178, NULL, NULL, '2019-03-31 12:40:18', '2019-03-31 12:40:18'),
(2009, 'الخبر', 'alkhabar', 178, NULL, NULL, '2019-03-31 12:41:09', '2019-03-31 12:41:09'),
(2010, 'عرعر', 'earear', 178, NULL, NULL, '2019-03-31 12:41:41', '2019-03-31 12:41:41'),
(2011, 'الحوية', 'Hoya', 178, NULL, NULL, '2019-03-31 12:44:31', '2019-03-31 12:44:31'),
(2012, 'عنيزة', 'Onaiza', 178, NULL, NULL, '2019-03-31 12:44:57', '2019-03-31 12:44:57'),
(2013, 'سكاكا', 'Skaka', 178, NULL, NULL, '2019-03-31 12:45:23', '2019-03-31 12:45:23'),
(2014, 'جيزان', 'Jizan', 178, NULL, NULL, '2019-03-31 12:46:14', '2019-03-31 12:46:14'),
(2015, 'القريات', 'Al-Qurayyat', 178, NULL, NULL, '2019-03-31 12:46:43', '2019-03-31 12:46:43'),
(2016, 'الظهران', 'Dhahran', 178, NULL, NULL, '2019-03-31 12:47:08', '2019-03-31 12:47:08'),
(2017, 'الزلفي', 'The Zulfi', 178, NULL, NULL, '2019-03-31 12:48:26', '2019-03-31 12:48:26'),
(2018, 'وادي الدواسر', 'Wadi al - Dawasir', 178, NULL, NULL, '2019-03-31 12:49:02', '2019-03-31 12:49:02'),
(2019, 'بيشه', 'Bisha', 178, NULL, NULL, '2019-03-31 12:49:37', '2019-03-31 12:49:37'),
(2020, 'الأفلاج', 'Aflaj', 178, NULL, NULL, '2019-03-31 12:51:58', '2019-03-31 12:51:58'),
(2021, 'الحوطة', 'Houta', 178, NULL, NULL, '2019-03-31 12:52:42', '2019-03-31 12:52:42'),
(2022, 'الدوادمي', 'Dawadmi', 178, NULL, NULL, '2019-03-31 12:53:17', '2019-03-31 12:53:17'),
(2023, 'تاروت', 'Tarout', 178, NULL, NULL, '2019-03-31 12:53:47', '2019-03-31 12:53:47'),
(2024, 'بحره', 'bahrah', 178, NULL, NULL, '2019-03-31 12:54:27', '2019-03-31 12:54:27'),
(2025, 'شروره', 'shururuh', 178, NULL, NULL, '2019-03-31 12:54:53', '2019-03-31 12:54:53'),
(2026, 'صبياء', 'sibya', 178, NULL, NULL, '2019-03-31 12:55:27', '2019-03-31 12:55:27'),
(2027, 'بارق', 'bariq', 178, NULL, NULL, '2019-03-31 12:56:03', '2019-03-31 12:56:03'),
(2028, 'احد رفيدة', 'ahd rafida', 178, NULL, NULL, '2019-03-31 12:56:47', '2019-03-31 12:56:47'),
(2029, 'بيش', 'Beech  ', 178, NULL, NULL, '2019-03-31 12:57:25', '2019-03-31 12:57:25'),
(2030, 'الرس', 'Alrass  ', 178, NULL, NULL, '2019-03-31 12:58:01', '2019-03-31 12:58:01'),
(2031, 'الباحة', 'albaha', 178, NULL, NULL, '2019-03-31 12:58:29', '2019-03-31 12:58:29'),
(2032, 'سيهات', 'syhat', 178, NULL, NULL, '2019-03-31 12:59:10', '2019-03-31 12:59:10'),
(2033, 'بلبيس111', 'belbis111', 178, NULL, NULL, '2019-06-20 07:25:14', '2019-06-20 07:56:31'),
(2034, 'بلبيس', 'belbis', 59, NULL, NULL, '2019-06-20 07:25:14', '2019-06-20 07:25:14');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 61, '2019-08-09 13:16:08', '2019-08-09 13:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `clinics`
--

CREATE TABLE `clinics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_doctor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_fr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '50',
  `active` int(11) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name_ar`, `name_fr`, `name_en`, `key`, `ordering`, `active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'أندورا', '', 'Andorra', '', 50, 1, NULL, NULL, NULL),
(2, 'الإمارات العربية المتحدة', '', 'United Arab Emirates', '', 50, 1, NULL, NULL, NULL),
(3, 'أفغانستان', '', 'Afghanistan', '', 50, 1, NULL, NULL, NULL),
(4, 'أنتيغوا وبربودا', '', 'Antigua and Barbuda', '', 50, 1, NULL, NULL, NULL),
(5, 'أنغيلا', '', 'Anguilla', '', 50, 1, NULL, NULL, NULL),
(6, 'ألبانيا', '', 'Albania', '', 50, 1, NULL, NULL, NULL),
(7, 'أرمينيا', '', 'Armenia', '', 50, 1, NULL, NULL, NULL),
(8, 'جزر الأنتيل الهولندية', '', 'Netherlands Antilles', '', 50, 1, NULL, NULL, NULL),
(9, 'أنغولا', '', 'Angola', '', 50, 1, NULL, NULL, NULL),
(10, 'الأرجنتين', '', 'Argentina', '', 50, 1, NULL, NULL, NULL),
(11, 'النمسا', '', 'Austria', '', 50, 1, NULL, NULL, NULL),
(12, 'أستراليا', '', 'Australia', '', 51, 1, NULL, NULL, '2019-07-08 09:14:21'),
(13, 'أروبا', '', 'Aruba', '', 50, 1, NULL, NULL, NULL),
(14, 'أذربيجان', '', 'Azerbaijan', '', 50, 1, NULL, NULL, NULL),
(15, 'البوسنة والهرسك', '', 'Bosnia and Herzegovina', '', 50, 1, NULL, NULL, NULL),
(16, 'بربادوس', '', 'Barbados', '', 50, 1, NULL, NULL, NULL),
(17, 'بنغلاديش', '', 'Bangladesh', '', 50, 1, NULL, NULL, NULL),
(18, 'بلجيكا', '', 'Belgium', '', 50, 1, NULL, NULL, NULL),
(19, 'بوركينا فاسو', '', 'Burkina Faso', '', 50, 1, NULL, NULL, NULL),
(20, 'بلغاريا', '', 'Bulgaria', '', 50, 1, NULL, NULL, NULL),
(21, 'البحرين', '', 'Bahrain', '', 50, 1, NULL, NULL, NULL),
(22, 'بوروندي', '', 'Burundi', '', 50, 1, NULL, NULL, NULL),
(23, 'بنين', '', 'Benin', '', 50, 1, NULL, NULL, NULL),
(24, 'برمودا', '', 'Bermuda', '', 50, 1, NULL, NULL, NULL),
(25, 'بروناي دار السلام', '', 'Brunei Darussalam', '', 50, 1, NULL, NULL, NULL),
(26, 'بوليفيا', '', 'Bolivia', '', 50, 1, NULL, NULL, NULL),
(27, 'البرازيل', '', 'Brazil', '', 50, 1, NULL, NULL, NULL),
(28, 'الباهاما', '', 'Bahamas', '', 50, 1, NULL, NULL, NULL),
(29, 'بوتان', '', 'Bhutan', '', 50, 1, NULL, NULL, NULL),
(30, 'بوتسوانا', '', 'Botswana', '', 50, 1, NULL, NULL, NULL),
(31, 'روسيا البيضاء', '', 'Belarus', '', 50, 1, NULL, NULL, NULL),
(32, 'بليز', '', 'Belize', '', 50, 1, NULL, NULL, NULL),
(33, 'كندا', '', 'Canada', '', 50, 1, NULL, NULL, NULL),
(34, 'جزر كوكوس (كيلينغ)', '', 'Cocos (Keeling) Islands', '', 50, 1, NULL, NULL, NULL),
(35, 'جمهورية الكونغو الديموقراطية', '', 'Democratic Republic of the Congo', '', 50, 1, NULL, NULL, NULL),
(36, 'جمهورية افريقيا الوسطى', '', 'Central African Republic', '', 50, 1, NULL, NULL, NULL),
(37, 'الكونغو', '', 'Congo', '', 50, 1, NULL, NULL, NULL),
(38, 'سويسرا', '', 'Switzerland', '', 50, 1, NULL, NULL, NULL),
(39, 'ساحل العاج (ساحل العاج)', '', 'Cote D\'Ivoire (Ivory Coast)', '', 50, 1, NULL, NULL, NULL),
(40, 'جزر كوك', '', 'Cook Islands', '', 50, 1, NULL, NULL, NULL),
(41, 'تشيلي', '', 'Chile', '', 50, 1, NULL, NULL, NULL),
(42, 'الكاميرون', '', 'Cameroon', '', 50, 1, NULL, NULL, NULL),
(43, 'الصين', '', 'China', '', 50, 1, NULL, NULL, NULL),
(44, 'كولومبيا', '', 'Colombia', '', 50, 1, NULL, NULL, NULL),
(45, 'كوستا ريكا', '', 'Costa Rica', '', 50, 1, NULL, NULL, NULL),
(46, 'كوبا', '', 'Cuba', '', 50, 1, NULL, NULL, NULL),
(47, 'الرأس الأخضر', '', 'Cape Verde', '', 50, 1, NULL, NULL, NULL),
(48, 'جزيرة الكريسماس', '', 'Christmas Island', '', 50, 1, NULL, NULL, NULL),
(49, 'قبرص', '', 'Cyprus', '', 50, 1, NULL, NULL, NULL),
(50, 'جمهورية التشيك', '', 'Czech Republic', '', 50, 1, NULL, NULL, NULL),
(51, 'ألمانيا', '', 'Germany', '', 50, 1, NULL, NULL, NULL),
(52, 'جيبوتي', '', 'Djibouti', '', 50, 1, NULL, NULL, NULL),
(53, 'الدنمارك', '', 'Denmark', '', 50, 1, NULL, NULL, NULL),
(54, 'دومينيكا', '', 'Dominica', '', 50, 1, NULL, NULL, NULL),
(55, 'جمهورية الدومنيكان', '', 'Dominican Republic', '', 50, 1, NULL, NULL, NULL),
(56, 'الجزائر', '', 'Algeria', '', 50, 1, NULL, NULL, NULL),
(57, 'الإكوادور', '', 'Ecuador', '', 50, 1, NULL, NULL, NULL),
(58, 'استونيا', '', 'Estonia', '', 50, 1, NULL, NULL, NULL),
(59, 'مصر', '', 'Egypt', '', 2, 1, NULL, NULL, '2018-10-18 06:49:58'),
(60, 'الصحراء الغربية', '', 'Western Sahara', '', 50, 1, NULL, NULL, NULL),
(61, 'إريتريا', '', 'Eritrea', '', 50, 1, NULL, NULL, NULL),
(62, 'إسبانيا', '', 'Spain', '', 50, 1, NULL, NULL, NULL),
(63, 'أثيوبيا', '', 'Ethiopia', '', 50, 1, NULL, NULL, NULL),
(64, 'فنلندا', '', 'Finland', '', 50, 1, NULL, NULL, NULL),
(65, 'فيجي', '', 'Fiji', '', 50, 1, NULL, NULL, NULL),
(66, 'جزر فوكلاند (مالفيناس)', '', 'Falkland Islands (Malvinas)', '', 50, 1, NULL, NULL, NULL),
(67, 'ولايات ميكرونيزيا الموحدة', '', 'Federated States of Micronesia', '', 50, 1, NULL, NULL, NULL),
(68, 'جزر صناعية', '', 'Faroe Islands', '', 50, 1, NULL, NULL, NULL),
(69, 'فرنسا', '', 'France', '', 50, 1, NULL, NULL, NULL),
(70, 'الغابون', '', 'Gabon', '', 50, 1, NULL, NULL, NULL),
(71, 'بريطانيا العظمى (المملكة المتحدة)', '', 'Great Britain (UK)', '', 50, 1, NULL, NULL, NULL),
(72, 'غرينادا', '', 'Grenada', '', 50, 1, NULL, NULL, NULL),
(73, 'جورجيا', '', 'Georgia', '', 50, 1, NULL, NULL, NULL),
(74, 'غيانا الفرنسية', '', 'French Guiana', '', 50, 1, NULL, NULL, NULL),
(75, 'لا شيء', '', 'NULL', '', 50, 1, NULL, NULL, NULL),
(76, 'غانا', '', 'Ghana', '', 50, 1, NULL, NULL, NULL),
(77, 'جبل طارق', '', 'Gibraltar', '', 50, 1, NULL, NULL, NULL),
(78, 'الأرض الخضراء', '', 'Greenland', '', 50, 1, NULL, NULL, NULL),
(79, 'غامبيا', '', 'Gambia', '', 50, 1, NULL, NULL, NULL),
(80, 'غينيا', '', 'Guinea', '', 50, 1, NULL, NULL, NULL),
(81, 'جوادلوب', '', 'Guadeloupe', '', 50, 1, NULL, NULL, NULL),
(82, 'غينيا الإستوائية', '', 'Equatorial Guinea', '', 50, 1, NULL, NULL, NULL),
(83, 'اليونان', '', 'Greece', '', 50, 1, NULL, NULL, NULL),
(84, 'جورجيا وجزر ساندويتش', '', 'S. Georgia and S. Sandwich Islands', '', 50, 1, NULL, NULL, NULL),
(85, 'غواتيمالا', '', 'Guatemala', '', 50, 1, NULL, NULL, NULL),
(86, 'غينيا بيساو', '', 'Guinea-Bissau', '', 50, 1, NULL, NULL, NULL),
(87, 'غيانا', '', 'Guyana', '', 50, 1, NULL, NULL, NULL),
(88, 'هونغ كونغ', '', 'Hong Kong', '', 50, 1, NULL, NULL, NULL),
(89, 'هندوراس', '', 'Honduras', '', 50, 1, NULL, NULL, NULL),
(90, 'كرواتيا (هرفاتسكا)', '', 'Croatia (Hrvatska)', '', 50, 1, NULL, NULL, NULL),
(91, 'هايتي', '', 'Haiti', '', 50, 1, NULL, NULL, NULL),
(92, 'اليونان', '', 'Hungary', '', 50, 1, NULL, NULL, NULL),
(93, 'أندونيسيا', '', 'Indonesia', '', 50, 1, NULL, NULL, NULL),
(94, 'أيرلندا', '', 'Ireland', '', 50, 1, NULL, NULL, NULL),
(95, 'إسرائيل', '', 'Israel', '', 50, 1, NULL, NULL, NULL),
(96, 'الهند', '', 'India', '', 50, 1, NULL, NULL, NULL),
(97, 'العراق', '', 'Iraq', '', 50, 1, NULL, NULL, NULL),
(98, 'إيران', '', 'Iran', '', 50, 1, NULL, NULL, NULL),
(99, 'أيسلندا', '', 'Iceland', '', 50, 1, NULL, NULL, NULL),
(100, 'إيطاليا', '', 'Italy', '', 50, 1, NULL, NULL, NULL),
(101, 'جامايكا', '', 'Jamaica', '', 50, 1, NULL, NULL, NULL),
(102, 'الأردن', '', 'Jordan', '', 50, 1, NULL, NULL, NULL),
(103, 'اليابان', '', 'Japan', '', 50, 1, NULL, NULL, NULL),
(104, 'كينيا', '', 'Kenya', '', 50, 1, NULL, NULL, NULL),
(105, 'قرغيزستان', '', 'Kyrgyzstan', '', 50, 1, NULL, NULL, NULL),
(106, 'كمبوديا', '', 'Cambodia', '', 50, 1, NULL, NULL, NULL),
(107, 'كيريباس', '', 'Kiribati', '', 50, 1, NULL, NULL, NULL),
(108, 'جزر القمر', '', 'Comoros', '', 50, 1, NULL, NULL, NULL),
(109, 'سانت كيتس ونيفيس', '', 'Saint Kitts and Nevis', '', 50, 1, NULL, NULL, NULL),
(110, 'كوريا الشمالية', '', 'Korea (North)', '', 50, 1, NULL, NULL, NULL),
(111, 'كوريا، جنوب)', '', 'Korea (South)', '', 50, 1, NULL, NULL, NULL),
(112, 'الكويت', '', 'Kuwait', '', 50, 1, NULL, NULL, NULL),
(113, 'جزر كايمان', '', 'Cayman Islands', '', 50, 1, NULL, NULL, NULL),
(114, 'كازاخستان', '', 'Kazakhstan', '', 50, 1, NULL, NULL, NULL),
(115, 'لاوس', '', 'Laos', '', 50, 1, NULL, NULL, NULL),
(116, 'لبنان', '', 'Lebanon', '', 50, 1, NULL, NULL, NULL),
(117, 'القديسة لوسيا', '', 'Saint Lucia', '', 50, 1, NULL, NULL, NULL),
(118, 'ليختنشتاين', '', 'Liechtenstein', '', 50, 1, NULL, NULL, NULL),
(119, 'سيريلانكا', '', 'Sri Lanka', '', 50, 1, NULL, NULL, NULL),
(120, 'ليبيريا', '', 'Liberia', '', 50, 1, NULL, NULL, NULL),
(121, 'ليسوتو', '', 'Lesotho', '', 50, 1, NULL, NULL, NULL),
(122, 'ليتوانيا', '', 'Lithuania', '', 50, 1, NULL, NULL, NULL),
(123, 'لوكسمبورغ', '', 'Luxembourg', '', 50, 1, NULL, NULL, NULL),
(124, 'لاتفيا', '', 'Latvia', '', 50, 1, NULL, NULL, NULL),
(125, 'ليبيا', '', 'Libya', '', 50, 1, NULL, NULL, NULL),
(126, 'المغرب', '', 'Morocco', '', 50, 1, NULL, NULL, NULL),
(127, 'موناكو', '', 'Monaco', '', 50, 1, NULL, NULL, NULL),
(128, 'مولدوفا', '', 'Moldova', '', 50, 1, NULL, NULL, NULL),
(129, 'مدغشقر', '', 'Madagascar', '', 50, 1, NULL, NULL, NULL),
(130, 'جزر مارشال', '', 'Marshall Islands', '', 50, 1, NULL, NULL, NULL),
(131, 'مقدونيا', '', 'Macedonia', '', 50, 1, NULL, NULL, NULL),
(132, 'مالي', '', 'Mali', '', 50, 1, NULL, NULL, NULL),
(133, 'ميانمار', '', 'Myanmar', '', 50, 1, NULL, NULL, NULL),
(134, 'منغوليا', '', 'Mongolia', '', 50, 1, NULL, NULL, NULL),
(135, 'ماكاو', '', 'Macao', '', 50, 1, NULL, NULL, NULL),
(136, 'جزر مريانا الشمالية', '', 'Northern Mariana Islands', '', 50, 1, NULL, NULL, NULL),
(137, 'مارتينيك', '', 'Martinique', '', 50, 1, NULL, NULL, NULL),
(138, 'موريتانيا', '', 'Mauritania', '', 50, 1, NULL, NULL, NULL),
(139, 'مونتسيرات', '', 'Montserrat', '', 50, 1, NULL, NULL, NULL),
(140, 'مالطا', '', 'Malta', '', 50, 1, NULL, NULL, NULL),
(141, 'موريشيوس', '', 'Mauritius', '', 50, 1, NULL, NULL, NULL),
(142, 'جزر المالديف', '', 'Maldives', '', 50, 1, NULL, NULL, NULL),
(143, 'مالاوي', '', 'Malawi', '', 50, 1, NULL, NULL, NULL),
(144, 'المكسيك', '', 'Mexico', '', 50, 1, NULL, NULL, NULL),
(145, 'ماليزيا', '', 'Malaysia', '', 50, 1, NULL, NULL, NULL),
(146, 'موزمبيق', '', 'Mozambique', '', 50, 1, NULL, NULL, NULL),
(147, 'ناميبيا', '', 'Namibia', '', 50, 1, NULL, NULL, NULL),
(148, 'كاليدونيا الجديدة', '', 'New Caledonia', '', 50, 1, NULL, NULL, NULL),
(149, 'النيجر', '', 'Niger', '', 50, 1, NULL, NULL, NULL),
(150, 'جزيرة نورفولك', '', 'Norfolk Island', '', 50, 1, NULL, NULL, NULL),
(151, 'نيجيريا', '', 'Nigeria', '', 50, 1, NULL, NULL, NULL),
(152, 'نيكاراغوا', '', 'Nicaragua', '', 50, 1, NULL, NULL, NULL),
(153, 'هولندا', '', 'Netherlands', '', 50, 1, NULL, NULL, NULL),
(154, 'النرويج', '', 'Norway', '', 50, 1, NULL, NULL, NULL),
(155, 'نيبال', '', 'Nepal', '', 50, 1, NULL, NULL, NULL),
(156, 'ناورو', '', 'Nauru', '', 50, 1, NULL, NULL, NULL),
(157, 'نيوي', '', 'Niue', '', 50, 1, NULL, NULL, NULL),
(158, 'نيوزيلندا (اوتياروا)', '', 'New Zealand (Aotearoa)', '', 50, 1, NULL, NULL, NULL),
(159, 'سلطنة عمان', '', 'Oman', '', 50, 1, NULL, NULL, NULL),
(160, 'بناما', '', 'Panama', '', 50, 1, NULL, NULL, NULL),
(161, 'بيرو', '', 'Peru', '', 50, 1, NULL, NULL, NULL),
(162, 'بولينيزيا الفرنسية', '', 'French Polynesia', '', 50, 1, NULL, NULL, NULL),
(163, 'بابوا غينيا الجديدة', '', 'Papua New Guinea', '', 50, 1, NULL, NULL, NULL),
(164, 'الفلبين', '', 'Philippines', '', 50, 1, NULL, NULL, NULL),
(165, 'باكستان', '', 'Pakistan', '', 50, 1, NULL, NULL, NULL),
(166, 'بولندا', '', 'Poland', '', 50, 1, NULL, NULL, NULL),
(167, 'سانت بيير وميكلون', '', 'Saint Pierre and Miquelon', '', 50, 1, NULL, NULL, NULL),
(168, 'بيتكيرن', '', 'Pitcairn', '', 50, 1, NULL, NULL, NULL),
(169, 'الأراضي الفلسطينية', '', 'Palestinian Territory', '', 50, 1, NULL, NULL, NULL),
(170, 'البرتغال', '', 'Portugal', '', 50, 1, NULL, NULL, NULL),
(171, 'بالاو', '', 'Palau', '', 50, 1, NULL, NULL, NULL),
(172, 'باراغواي', '', 'Paraguay', '', 50, 1, NULL, NULL, NULL),
(173, 'دولة قطر', '', 'Qatar', '', 50, 1, NULL, NULL, NULL),
(174, 'جمع شمل', '', 'Reunion', '', 50, 1, NULL, NULL, NULL),
(175, 'رومانيا', '', 'Romania', '', 50, 1, NULL, NULL, NULL),
(176, 'الاتحاد الروسي', '', 'Russian Federation', '', 50, 1, NULL, NULL, NULL),
(177, 'رواندا', '', 'Rwanda', '', 50, 1, NULL, NULL, NULL),
(178, 'المملكة العربية السعودية', '', 'Saudi Arabia', '', 1, 1, NULL, NULL, '2018-10-18 04:52:18'),
(179, 'جزر سليمان', '', 'Solomon Islands', '', 50, 1, NULL, NULL, NULL),
(180, 'سيشيل', '', 'Seychelles', '', 50, 1, NULL, NULL, NULL),
(181, 'سودان', '', 'Sudan', '', 50, 1, NULL, NULL, NULL),
(182, 'السويد', '', 'Sweden', '', 50, 1, NULL, NULL, NULL),
(183, 'سنغافورة', '', 'Singapore', '', 50, 1, NULL, NULL, NULL),
(184, 'سانت هيلانة', '', 'Saint Helena', '', 50, 1, NULL, NULL, NULL),
(185, 'سلوفينيا', '', 'Slovenia', '', 50, 1, NULL, NULL, NULL),
(186, 'سفالبارد وجان مايان', '', 'Svalbard and Jan Mayen', '', 50, 1, NULL, NULL, NULL),
(187, 'سلوفاكيا', '', 'Slovakia', '', 50, 1, NULL, NULL, NULL),
(188, 'سيرا ليون', '', 'Sierra Leone', '', 50, 1, NULL, NULL, NULL),
(189, 'سان مارينو', '', 'San Marino', '', 50, 1, NULL, NULL, NULL),
(190, 'السنغال', '', 'Senegal', '', 50, 1, NULL, NULL, NULL),
(191, 'الصومال', '', 'Somalia', '', 50, 1, NULL, NULL, NULL),
(192, 'سورينام', '', 'Suriname', '', 50, 1, NULL, NULL, NULL),
(193, 'ساو تومي وبرنسيبي', '', 'Sao Tome and Principe', '', 50, 1, NULL, NULL, NULL),
(194, 'السلفادور', '', 'El Salvador', '', 50, 1, NULL, NULL, NULL),
(195, 'سوريا', '', 'Syria', '', 50, 1, NULL, NULL, NULL),
(196, 'سوازيلاند', '', 'Swaziland', '', 50, 1, NULL, NULL, NULL),
(197, 'جزر تركس وكايكوس', '', 'Turks and Caicos Islands', '', 50, 1, NULL, NULL, NULL),
(198, 'تشاد', '', 'Chad', '', 50, 1, NULL, NULL, NULL),
(199, 'المناطق الجنوبية لفرنسا', '', 'French Southern Territories', '', 50, 1, NULL, NULL, NULL),
(200, 'ليذهب', '', 'Togo', '', 50, 1, NULL, NULL, NULL),
(201, 'تايلاند', '', 'Thailand', '', 50, 1, NULL, NULL, NULL),
(202, 'طاجيكستان', '', 'Tajikistan', '', 50, 1, NULL, NULL, NULL),
(203, 'توكيلاو', '', 'Tokelau', '', 50, 1, NULL, NULL, NULL),
(204, 'تركمانستان', '', 'Turkmenistan', '', 50, 1, NULL, NULL, NULL),
(205, 'تونس', '', 'Tunisia', '', 50, 1, NULL, NULL, NULL),
(206, 'تونغا', '', 'Tonga', '', 50, 1, NULL, NULL, NULL),
(207, 'ديك رومي', '', 'Turkey', '', 50, 1, NULL, NULL, NULL),
(208, 'ترينداد وتوباغو', '', 'Trinidad and Tobago', '', 50, 1, NULL, NULL, NULL),
(209, 'توفالو', '', 'Tuvalu', '', 50, 1, NULL, NULL, NULL),
(210, 'تايوان', '', 'Taiwan', '', 50, 1, NULL, NULL, NULL),
(211, 'تنزانيا', '', 'Tanzania', '', 50, 1, NULL, NULL, NULL),
(212, 'أوكرانيا', '', 'Ukraine', '', 50, 1, NULL, NULL, NULL),
(213, 'أوغندا', '', 'Uganda', '', 50, 1, NULL, NULL, NULL),
(214, 'أوروغواي', '', 'Uruguay', '', 50, 1, NULL, NULL, NULL),
(215, 'أوزبكستان', '', 'Uzbekistan', '', 50, 1, NULL, NULL, NULL),
(216, 'سانت فنسنت وجزر غرينادين', '', 'Saint Vincent and the Grenadines', '', 50, 1, NULL, NULL, NULL),
(217, 'فنزويلا', '', 'Venezuela', '', 50, 1, NULL, NULL, NULL),
(218, 'جزر العذراء البريطانية)', '', 'Virgin Islands (British)', '', 50, 1, NULL, NULL, NULL),
(219, 'جزر فيرجن (الولايات المتحدة)', '', 'Virgin Islands (U.S.)', '', 50, 1, NULL, NULL, NULL),
(220, 'فيتنام', '', 'Viet Nam', '', 50, 1, NULL, NULL, NULL),
(221, 'فانواتو', '', 'Vanuatu', '', 50, 1, NULL, NULL, NULL),
(222, 'واليس وفوتونا', '', 'Wallis and Futuna', '', 50, 1, NULL, NULL, NULL),
(223, 'ساموا', '', 'Samoa', '', 50, 1, NULL, NULL, NULL),
(224, 'اليمن', '', 'Yemen', '', 50, 1, NULL, NULL, NULL),
(225, 'مايوت', '', 'Mayotte', '', 50, 1, NULL, NULL, NULL),
(226, 'جنوب أفريقيا', '', 'South Africa', '', 50, 1, NULL, NULL, NULL),
(227, 'زامبيا', '', 'Zambia', '', 50, 1, NULL, NULL, NULL),
(228, 'زائير (سابقة)', '', 'Zaire (former)', '', 50, 1, NULL, NULL, NULL),
(229, 'زيمبابوي', '', 'Zimbabwe', '', 50, 1, NULL, NULL, NULL),
(230, 'الولايات المتحدة', '', 'United States of America', '', 50, 1, NULL, NULL, NULL),
(232, 'تجربه', '', 'test', '', 1, 0, '2019-06-20 06:57:58', '2018-10-18 05:04:02', '2019-06-20 06:57:58'),
(233, 'تجربه', NULL, '2test', NULL, 3, 1, NULL, '2019-06-20 06:29:35', '2019-06-20 06:29:35');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `url`, `created_at`, `updated_at`) VALUES
(1, 'uploads/files/img-bgh-dsd-1560650463345107524.jpg', '2019-06-16 00:01:03', '2019-06-16 00:01:03');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2012_06_15_225449_create_countries_table', 1),
(12, '2013_06_15_225509_create_cities_table', 1),
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(16, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(17, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(18, '2016_06_01_000004_create_oauth_clients_table', 1),
(19, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(20, '2019_06_15_225251_create_admins_table', 1),
(21, '2019_06_15_234523_create_clients_table', 1),
(22, '2019_06_16_013414_create_files_table', 2),
(23, '2019_06_20_104829_create_permission_tables', 3),
(24, '2019_07_23_132314_create_clinics_table', 4),
(26, '2019_08_09_145220_create_projects_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 6),
(1, 'App\\User', 11),
(1, 'App\\User', 18),
(1, 'App\\User', 36),
(1, 'App\\User', 38),
(1, 'App\\User', 55),
(1, 'App\\User', 56),
(1, 'App\\User', 57),
(1, 'App\\User', 59),
(1, 'App\\User', 60),
(2, 'App\\User', 6),
(2, 'App\\User', 11),
(2, 'App\\User', 18),
(2, 'App\\User', 36),
(2, 'App\\User', 38),
(2, 'App\\User', 56),
(2, 'App\\User', 58);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('2b84a6e88316fa9df25ee8eae868d89b758eba4f37854c9b9a63913a55f56ad5d25a7ce9105e1a99', 61, 1, 'MyApp', '[]', 0, '2019-08-09 20:41:52', '2019-08-09 20:41:52', '2020-08-09 22:41:52'),
('3fcae45c090f98f0800f8cfa7014b08ed7fe50924ae379bd60b44de9dd814dd52c69594897f6a52e', 4, 1, 'MyApp', '[]', 0, '2019-06-15 23:22:58', '2019-06-15 23:22:58', '2020-06-16 01:22:58'),
('463da128aeb1297d372aef6e883e628d6a33106288200f07ae18eb71226185529b265c517157d922', 61, 1, 'MyApp', '[]', 0, '2019-08-09 20:45:39', '2019-08-09 20:45:39', '2020-08-09 22:45:39'),
('5e383520f9944598a086421a0383ea3aaa432773658529b5305632d0d3cdf18a4e739e76be6bd173', 61, 1, 'MyApp', '[]', 0, '2019-08-09 20:45:42', '2019-08-09 20:45:42', '2020-08-09 22:45:42'),
('6bf7bce7f5e3faf582c23e1b8d74c598216d9c552bd136e538ba9c3bb4111724534cf16b7848cc52', 3, 1, 'MyApp', '[]', 0, '2019-06-15 23:21:14', '2019-06-15 23:21:14', '2020-06-16 01:21:14'),
('b7280696131349897cc8889dbd895cb45c69db2437eef879c6ab19928ab661df3737d9e7f19e194c', 2, 1, 'MyApp', '[]', 0, '2019-06-15 23:20:30', '2019-06-15 23:20:30', '2020-06-16 01:20:30'),
('c3c5a276a8ed0f69906502768ba54a3e50662911591d6452f636bde27d2b45dacba984f05e92f94b', 61, 1, 'MyApp', '[]', 0, '2019-08-09 17:06:31', '2019-08-09 17:06:31', '2020-08-09 19:06:31'),
('c7817199de23ff12e4074d4c6e72134ead5b9aa2aecf1eb40a05731300a4d557943068ee870241c4', 61, 1, 'MyApp', '[]', 0, '2019-08-09 20:47:04', '2019-08-09 20:47:04', '2020-08-09 22:47:04'),
('d07f33d6746f7d2b7b41b4d0533e75619ad4ebcb585e64a958503da73646e1c94f91709256f12364', 61, 1, 'MyApp', '[]', 0, '2019-08-09 20:49:26', '2019-08-09 20:49:26', '2020-08-09 22:49:26'),
('e6c8a62e733eabfa013c5a4e8aea20c295eb2f620fedc20ca584410bf1090e27abef70593bea2c54', 5, 1, 'MyApp', '[]', 0, '2019-06-17 08:52:43', '2019-06-17 08:52:43', '2020-06-17 10:52:43'),
('e8ada20403f56ca38da475f1abcf47326e0c50411ea8a5d6ff5605bec3a4162141ce7132aa94feb4', 5, 1, 'MyApp', '[]', 0, '2019-06-15 23:24:40', '2019-06-15 23:24:40', '2020-06-16 01:24:40');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'ay5YCFW88DN7vzKKl7obY1d8mFkS6kXL1h1AnXaN', 'http://localhost', 1, 0, 0, '2019-06-15 23:20:20', '2019-06-15 23:20:20'),
(2, NULL, 'Laravel Password Grant Client', 't1C4qnmJcgrrkh2IKacbdUUX1n2uUQhiOdvAPoxg', 'http://localhost', 0, 1, 0, '2019-06-15 23:20:20', '2019-06-15 23:20:20');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-06-15 23:20:20', '2019-06-15 23:20:20');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin-list', 'web', '2019-06-20 08:57:26', '2019-06-20 08:57:26'),
(2, 'admin-create', 'web', '2019-06-20 08:57:26', '2019-06-20 08:57:26'),
(3, 'admin-edit', 'web', '2019-06-20 08:57:26', '2019-06-20 08:57:26'),
(4, 'admin-delete', 'web', '2019-06-20 08:57:26', '2019-06-20 08:57:26'),
(5, 'client-list', 'web', '2019-06-20 08:57:26', '2019-06-20 08:57:26'),
(6, 'client-create', 'web', '2019-06-20 08:57:26', '2019-06-20 08:57:26'),
(7, 'client-edit', 'web', '2019-06-20 08:57:26', '2019-06-20 08:57:26'),
(8, 'client-delete', 'web', '2019-06-20 08:57:26', '2019-06-20 08:57:26'),
(9, 'settings', 'web', '2019-06-20 08:57:26', '2019-06-20 08:57:26'),
(10, 'role-list', 'web', '2019-06-20 08:57:26', '2019-06-20 08:57:26'),
(11, 'role-create', 'web', '2019-06-20 08:57:26', '2019-06-20 08:57:26'),
(12, 'role-edit', 'web', '2019-06-20 08:57:26', '2019-06-20 08:57:26'),
(13, 'role-delete', 'web', '2019-06-20 08:57:26', '2019-06-20 08:57:26'),
(14, 'city-list', 'web', '2019-06-20 08:57:26', '2019-06-20 08:57:26'),
(15, 'city-create', 'web', '2019-06-20 08:57:26', '2019-06-20 08:57:26'),
(16, 'city-action', 'web', '2019-06-20 08:57:26', '2019-06-20 08:57:26'),
(17, 'country-list', 'web', '2019-06-20 08:57:26', '2019-06-20 08:57:26'),
(18, 'country-create', 'web', '2019-06-20 08:57:26', '2019-06-20 08:57:26'),
(19, 'country-action', 'web', '2019-06-20 08:57:26', '2019-06-20 08:57:26');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('new','old') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('individually','public') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat` enum('product','translation','writing','other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `desc`, `image`, `status`, `type`, `cat`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'مشروع تخرج', 'برجاء العمل على هذا المشروع', '', 'new', 'public', 'product', 61, '2019-08-09 17:14:48', '2019-08-09 17:14:48'),
(3, 'fffffff', 'fffffffff', '', 'new', 'individually', 'product', 61, '2019-08-09 22:09:56', '2019-08-09 22:09:56'),
(4, 'مشروع تخرج', 'برجاء العمل على هذا المشروع', '', 'new', 'public', 'product', 61, '2019-08-09 22:10:40', '2019-08-09 22:10:40'),
(12, 'qqqqqqq', 'qqqqqqqqqqqqqqqqq', '', 'old', NULL, 'translation', 61, '2019-08-09 22:29:36', '2019-08-09 22:29:36'),
(13, 'qqqq', 'qqqq', '', 'new', NULL, 'product', 61, '2019-08-09 22:33:54', '2019-08-09 22:33:54'),
(14, 'ee', 'eee', '', 'old', NULL, 'translation', 61, '2019-08-09 22:38:05', '2019-08-09 22:38:05'),
(15, '1111111111', '1111111', '', 'old', NULL, 'product', 61, '2019-08-09 22:44:28', '2019-08-09 22:44:28'),
(16, 'nnn', 'nnn', '', 'old', NULL, 'writing', 61, '2019-08-10 00:34:58', '2019-08-10 00:34:58'),
(17, 'vvv', 'vv', '', 'old', NULL, 'translation', 61, '2019-08-10 00:40:15', '2019-08-10 00:40:15'),
(18, 's', 'sssssssssssssssssss', '', 'old', NULL, 'translation', 61, '2019-08-10 00:47:43', '2019-08-10 00:47:43'),
(19, 'qqq', 'qqq', '', 'old', NULL, 'translation', 61, '2019-08-10 00:49:59', '2019-08-10 00:49:59');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2019-06-20 09:12:44', '2019-06-20 09:12:44'),
(2, 'suberviser', 'web', '2019-06-20 11:30:53', '2019-06-20 11:30:53'),
(3, 'mohamed', 'web', '2019-07-08 09:13:52', '2019-07-08 09:13:52');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(3, 1),
(3, 3),
(4, 1),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(7, 1),
(7, 2),
(7, 3),
(8, 1),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(17, 2),
(18, 1),
(19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `verification` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `image`, `email_verified_at`, `password`, `country_id`, `city_id`, `verification`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'mohamed mounir', 'mohamedmounir703@gmail.com', '1234561235', 'uploads/avatars/1561011764.jpg', NULL, '$2y$10$y8pllmzu6gni1oseI6Gbq.ptjIZTcGn.ZusiwGis4AKLxhlbzFPfK', 1, 1, 1, NULL, NULL, '2019-06-17 08:58:53', '2019-06-23 07:18:39'),
(18, 'mohamed mounir', 'admin@admin.com', '12345612350', '', NULL, '$2y$10$HK6Y52vJSqh31A5SeD/jQe6BxHb0AxEFoOwIKmoO5PgqNmtA6sHwu', 1, 1, 1, NULL, NULL, '2019-06-19 08:38:38', '2019-06-19 08:38:38'),
(61, 'محمد', 'm@m.com', '01271959764', '', NULL, '$2y$10$BFg/jw1Zk8KAKdDfpg58BO/mmPx4S4ksEiPsgFXzQskrOl2iuf1JO', 59, 926, 1, NULL, NULL, '2019-08-09 13:16:08', '2019-08-09 13:20:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admins_user_id_foreign` (`user_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_country_id_foreign` (`country_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clients_user_id_foreign` (`user_id`);

--
-- Indexes for table `clinics`
--
ALTER TABLE `clinics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clinics_email_unique` (`email`),
  ADD KEY `clinics_user_id_foreign` (`user_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_country_id_foreign` (`country_id`),
  ADD KEY `users_city_id_foreign` (`city_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2035;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `clinics`
--
ALTER TABLE `clinics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `clinics`
--
ALTER TABLE `clinics`
  ADD CONSTRAINT `clinics_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `users_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
