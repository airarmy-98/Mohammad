-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2023 at 08:16 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `images_setting`
--

CREATE TABLE `images_setting` (
  `id` int(200) NOT NULL,
  `logo` varchar(200) COLLATE utf8_persian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `images_setting`
--

INSERT INTO `images_setting` (`id`, `logo`) VALUES
(1, 'logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `intership`
--

CREATE TABLE `intership` (
  `id` int(200) NOT NULL,
  `date` int(200) NOT NULL,
  `project_id` int(200) NOT NULL,
  `student_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `intership`
--

INSERT INTO `intership` (`id`, `date`, `project_id`, `student_id`) VALUES
(2, 1671436361, 34, 102),
(3, 1671436364, 1, 102),
(5, 1671437020, 1, 103),
(6, 1671437023, 31, 103),
(8, 1671520132, 2, 118),
(9, 1671520138, 38, 118);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `teacher_id` int(100) DEFAULT NULL,
  `text` varchar(300) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `student_id` int(100) DEFAULT NULL,
  `title` varchar(250) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `progress` bigint(100) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date` int(200) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `image`, `teacher_id`, `text`, `student_id`, `title`, `progress`, `updated_at`, `created_at`, `date`, `status`) VALUES
(4, '1671438374fonts.css', 74, 'سلام علیکم خسته نباشید خواستم بدون استفاده از این قالب فونت در پروژه بنده مورد تایید شما میباشد', 103, 'طراحی و راه اندازی تحت وب مدیریت پایان نامه دانشجویی', 35, '2022-12-19 05:01:13', '2022-12-19 04:56:14', 0, NULL),
(5, '1671438928fonts.css', 41, 'طراحی و راه اندازی تحت وب مدیریت پایان نامه دانشجویی', NULL, 'بررسی تجهیزات واقعیت مجازی /افزوده و ترکیبی و کاربرد عملی انها در شبیه سازی پرواز', NULL, '2022-12-19 05:05:28', '2022-12-19 05:05:28', 0, NULL),
(16, '1671521191index.blade.php', 74, 'سلام', 103, 'طراحی و راه اندازی سامانه تحت وب مدیریت پایان نامه دانشجویی', 70, '2023-01-01 05:30:32', '2022-12-20 07:26:31', 0, NULL),
(17, '1671521279update.blade.php', 74, 'help', 103, 'طراحی و راه اندازی سامانه تحت وب مدیریت پایان نامه دانشجویی', 100, '2023-01-09 06:27:05', '2022-12-20 07:27:59', 1671521279, 1),
(19, '1673074748student (4).sql', 74, 'help me', 103, 'دیتا بیس پروژه', NULL, '2023-01-07 06:59:08', '2023-01-07 06:59:08', 1673074748, NULL),
(20, NULL, 74, NULL, 103, NULL, NULL, '2023-01-09 06:28:37', '2023-01-08 10:47:38', 1673174858, NULL),
(21, NULL, 74, 'سلام استاد محترم میخواستم موضوع اسمارت هوم در متاورث را برای عنوان پایان نامه پیشنهاد دهم', 103, NULL, NULL, '2023-01-09 07:10:06', '2023-01-08 10:49:06', 1673174946, 1),
(22, NULL, 71, 'سلام استاد محترم میخواستم موضوع اسمارت هوم در متاورث را برای عنوان پایان نامه پیشنهاد دهم', 103, 'پیشنهاد عنوان پروژه', NULL, '2023-01-08 10:49:50', '2023-01-08 10:49:50', 1673174990, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(100) NOT NULL,
  `std_number` varchar(255) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(200) NOT NULL,
  `teacher_id` int(200) NOT NULL,
  `date` varchar(200) COLLATE utf8_persian_ci NOT NULL,
  `title` varchar(200) COLLATE utf8_persian_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_persian_ci NOT NULL,
  `flag` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `teacher_id`, `date`, `title`, `description`, `flag`) VALUES
(3, 70, '1671434698', 'طراحی و مدلسازی سیستم ترابری دانشگاه هوایی', '3', NULL),
(4, 70, '1671434771', 'مدلسازی گرافیکی پهپاد', '4', NULL),
(5, 70, '1671434819', 'محاسبات کوانتومی به منظور پردازش داده با زبان پایتون', '5', NULL),
(6, 70, '1671434857', 'تحقیق در مورد AR و اجرای یک سناریو عملی', '6', NULL),
(7, 70, '1671434883', 'محاسبات کوانتومی با زبان پایتون', '7', NULL),
(8, 71, '1671435021', 'بررسی چارچوب معماری مرکزی عملیات امنیت (soc)', '8', NULL),
(9, 71, '1671435075', 'بررسی سامانه مدیریت یکپارچه تهدیدات', '9', NULL),
(10, 71, '1671435117', 'بررسی شبکه نرم افزار محور SDN', '10', NULL),
(11, 71, '1671435175', 'بررسی و تحقیق در مورد سامانه تشخیص و پیشگیری از نفوذ', '11', NULL),
(12, 72, '1671435264', 'بررسی و تحقیق در مورد رادار های کوانتومی', '12', NULL),
(13, 72, '1671435355', 'بررسی و تحقیق در مورد کاربرد اینترنت اشیا در صنایع نظامی و ارتش های جهان', '13', NULL),
(14, 72, '1671435415', 'طراحی و پیاده سازی تشخیص و نمایش شتاب زاویه ای و جایروسکوپ با استفاده از رزبری پای', '14', NULL),
(15, 72, '1671435441', 'بررسی و تحقیق در داده دکاوی در زمینه شبکه های اجتماعی', '15', NULL),
(16, 72, '1671435481', 'بررسی و تحقیق در مورد Semantic Communication', '16', NULL),
(17, 73, '1671435535', 'طراحی و پیاده سازی یک بد افزار از نوع Bot Net', '17', NULL),
(18, 73, '1671435570', 'طراحی و پیاده سازی سامانه مبتنی بر وب انبار داری یگان های دانشگاه هوایی', '18', NULL),
(19, 73, '1671435624', 'طراحی و پیاده سازی سامانه مبتنی بر وب /صدور و پیگیری حکم کار یگان های دانشگاه', '19', NULL),
(20, 73, '1671435653', 'مستند سازی و تحلیل کد نرم افزار Zabbix', '20', NULL),
(21, 74, '1671435715', 'تحلیل و طراحی سامانه تحت وب نظام انتقادات و پیشنهادات سازمانی', '21', NULL),
(22, 74, '1671435781', 'طراحی و راه اندازی سامانه تحت وب مدیریت پایان نامه دانشجویی', '22', NULL),
(23, 74, '1671435827', 'تحلیل ،طراحی و پیاده سازی سامانه تحت وب بولتن الکترونیکی دانشکده', '23', 1),
(24, 74, '1671435876', 'ارائه داشبورد مدیریتی تحت وب براساس معماری سرویس گرا', '5', NULL),
(25, 75, '1671435922', 'طراحی و برنامه نویسی بازی منچ با زبان ++C', '25', NULL),
(26, 75, '1671435980', 'دستیار صوتی هوشمند', '26', NULL),
(27, 75, '1671436019', 'ساخت ربات هوشمند با آردینو', '27', NULL),
(28, 76, '1671436060', 'ساخت سنسور هوشمند تشخیص آتش', '28', NULL),
(29, 76, '1671436080', 'تشخیص اشیا با استفاده از رادار های زمین نفوذ', '29', NULL),
(30, 76, '1671436111', 'بررسی نحوه ایجاد ارتباط بین سیستم عصبی انسان و سخت افزار', '30', NULL),
(31, 76, '1671436141', 'بررسی روش های استخراج سیگنال های مغزی،انسان و تفسیر ان', '31', NULL),
(32, 76, '1671436158', 'استخراج اشکال هندسی از تصویر', '32', NULL),
(33, 76, '1671436184', 'تشخیص چهره و نمایش آن با ویدیو', '33', NULL),
(34, 76, '1671436206', 'تشخیص عمق اشیا در تصویر', '34', NULL),
(38, 75, '1671520013', 'تدوین سیستم عامل های لینوکس و ویندوز', '00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `single_setting`
--

CREATE TABLE `single_setting` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_persian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `single_setting`
--

INSERT INTO `single_setting` (`id`, `title`) VALUES
(1, 'سامانه اخذ پروژه');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(225) NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_password` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `date` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `std_number` int(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `username`, `email`, `password`, `old_password`, `role`, `remember_token`, `created_at`, `updated_at`, `date`, `lname`, `std_number`) VALUES
(41, 'مدیر ارشد', 'admin', 'info@gmail.com', '$2y$10$TkdPBk2OK7D5pdHzdkRpT.VPHjJPBj6aliPnlZJx..8cT5EwCMjT6', '12345678', 'admin', 'TW5FVfBVVcuuwkpvE7fvJ7yeLpyHU9KN4w5sOqdn6ETnHYXZJU6iJiT79ha1', '2018-09-02 12:47:14', '2019-09-23 13:40:27', '1535908634', '', NULL),
(67, 'مدیر', 'hoseini', 'mohammadhoseiny137881@gmail.com', '$2y$10$pAGEOgwkUVm6/qQQWeazTeWPS3TjrZC1TiofsFDwAAINYpf057Mpa', 'ml13781381', 'admin', 'eJYGeaD9sT45jRNHoX3qH9camctNHGlnWTvuYghmSeWPc7zsbWiIPr3ho6pu', '2022-12-19 01:49:00', '2022-12-19 01:49:00', '1671427140', 'حسینی', 98003769),
(69, 'مدیر', '98004774', 'ali.ali.maleki.rashid.13761378@gmail.com', '$2y$10$bS/exh9Fyei.BYD7Y0AXeOVXxyE02u1XSzBTe3MubnJmk4vAgaMqy', 'ali13761378', 'admin', 'zvQWfiWWrZ0kthOms9Khhr6r0dzJeLbuMUB2SaJGvEhpC9GZcVvrGOncTPAJ', '2022-12-19 01:55:57', '2022-12-19 01:55:57', '1671427557', 'ملکی', 98004774),
(70, 'دکتر', 'P1398001', 'info1@gmail.com', '$2y$10$xLaZiUyXGQvBpgtFwlvfAegK6p40uVFVsWQXAEjTXnGZi6hX5joXG', 'pc1398', 'teacher', 'Seai7AY52BaFiondC9nXptdEk3O2sfl5L5h3uRhOhJczAnq8OFsbdyOcp6eC', '2022-12-19 03:10:08', '2022-12-19 03:10:08', '1671432008', 'دی پیر', NULL),
(71, 'دکتر', 'P1398002', 'info2@gmail.com', '$2y$10$YHGh9j2DsmeJM8z5GgYSLux2rh88PtHPGuIz3CjUGzDT.36bv/mf6', 'pc1398', 'teacher', 'C77itahLUCq6I4wCDHld25ZoJhxH5XA4cynQTI6XQdbDuTwNvNGgL1hV2YqK', '2022-12-19 03:10:49', '2022-12-19 03:10:49', '1671432049', 'هلیلی', NULL),
(72, 'دکتر', 'P1398003', 'info3@gmail.com', '$2y$10$Ar0bpUMMSryMxN7YeyKNwuw7ntkWyxGJdAjFEdIRTWrT.fAk1tSVW', 'pc1398', 'teacher', 'namYSbu1c5wBnrBWfR8l0X2Y5ykMUFcv1APrRGG6Hdj07dxPL7cGqH6oStMX', '2022-12-19 03:11:29', '2022-12-19 03:11:29', '1671432089', 'فرجی', NULL),
(73, 'دکتر', 'P1398004', 'info4@gmail.com', '$2y$10$tn6FYTR3zSKmNJM3uhC3i.6cIGlmVGE0Eoot1.wNCuEHHWUZPz4SS', 'pc1398', 'teacher', 'pDRlYlQAvOLuyYDeZaSE0jEdlZrLJNoPaS62O7terOrekVCphNhj5HyHebwd', '2022-12-19 03:12:02', '2022-12-19 03:12:02', '1671432122', 'کریمی', NULL),
(74, 'دکتر', 'p1398005', 'info5@gmail.com', '$2y$10$3e3yDb5tK8wMJjnX9hhduOzaMH0paYBjjovuQm1LAA9J/v1d4k3ma', 'pc1398', 'teacher', 'JPYW3dPUxVRzJBViczNgI8lmfRTweTyHrVhGJvt7mkkLvcaqY2vmh0F2hxHL', '2022-12-19 03:12:32', '2022-12-19 03:12:32', '1671432152', 'شریفی', NULL),
(75, 'دکتر', 'P1398006', 'info6@gmail.com', '$2y$10$2uRZVmzdG6pLU.Od3wxN5e2kKGwugXMesVVrpZ/uHjJX08A9CN.m2', 'pc1398', 'teacher', '0v0KiOJ46wBQ840kftgyk2DnI9CiHjsjMX3SIeMMtVFenSEnSLq883Z8akSd', '2022-12-19 03:13:04', '2022-12-19 03:13:04', '1671432184', 'غلام نژاد', NULL),
(76, 'دکتر', 'P1398007', 'info7@gmail.com', '$2y$10$vhhFR13VL3G4McTGrQSMW.feTnmB90NiDu83KpJ/tVmb0b/Kfv2KK', 'pc1398', 'teacher', 'CCccpzraPtxaE7vVBq0YHuV8kqljm5Bdpt909LlcTE8dbSZQmmzxlTic74EB', '2022-12-19 03:13:43', '2022-12-19 03:13:43', '1671432223', 'زنگنه', NULL),
(77, 'دکتر', 'P1398008', 'info8@gmail.com', '$2y$10$nfA3XQBW/g0v7wZjEkTYG.Lxs0uVEHVWRLAPjAsnISNPx7ETvR0wa', 'pc1398', 'teacher', NULL, '2022-12-19 03:14:21', '2022-12-19 03:14:21', '1671432261', 'سازدار', NULL),
(78, 'سرگرد', 'P1398009', 'info9@gmail.com', '$2y$10$I2Ydr369kHtvb1vlgCPI0umdObymeRGOTMhsxO15QPTO2kTfKkCCO', 'pc1398', 'teacher', NULL, '2022-12-19 03:15:25', '2022-12-19 03:15:25', '1671432325', 'رستمی', NULL),
(79, 'سرگرد', 'P1398010', 'info10@gmail.com', '$2y$10$VPgPEmClZDc7Gn6nzgeJiOC4HH1/HyYDMjMM2YkTcIa1K/EuPt.Hm', 'pc1398', 'teacher', NULL, '2022-12-19 03:16:05', '2022-12-19 03:16:05', '1671432365', 'قره باغی', NULL),
(80, 'سرگرد', 'P1398011', 'info11@gmail.com', '$2y$10$voUTCQQuHi43an8lutXQy.zXhn7.U2aHhplwt/yMwMImUWzma96ci', 'pc1398', 'teacher', NULL, '2022-12-19 03:16:40', '2022-12-19 03:16:40', '1671432400', 'میثمی', NULL),
(81, 'امیرحسین', '98810101', 'infos1@gmail.com', '$2y$10$nIm03zCGVheldPihY5iOLO2mIl6mcuiwJjdTYua1J4vLe61jArkGO', '98810101', 'student', 'kdjtzGO1oQnJOFanLywrusOyJ2GD3SqaRoPYhoqOunddB6goFRuki0dF6gn3', '2022-12-19 03:18:04', '2022-12-19 03:18:04', '1671432484', 'محمدی', 98810101),
(82, 'جواد', '98810009', 'infos2@gmail.com', '$2y$10$b3Yjszih2M4y/KgBwJWrYurJ.Zfq4xP7S4Iy5bHbTtp1bVrMT3SsS', '98810009', 'student', NULL, '2022-12-19 03:19:44', '2022-12-19 03:19:44', '1671432584', 'خلیلی', 98810009),
(83, 'بهنام', '98810024', 'infos3@gmail.com', '$2y$10$RbdUato0t40TCgoPLbADTO5w7TrNjIOGZoGucDJ2W3g6HefTzH29S', '98810024', 'student', NULL, '2022-12-19 03:21:17', '2022-12-19 03:21:17', '1671432677', 'رضایی', 98810024),
(84, 'مصطفی', '98815250', 'infos4@gmail.com', '$2y$10$u7HWYHr1N221XLfk7jRXUOg.j6CfY/H1Z8Wf2q4ayckR0MKFeWUkW', '98815250', 'student', 'D8riR1L66Ja39hL2wKc4DlBwGwVIBzyPFm1Tm8umIWWW9FDbSRkC6mYpBsOb', '2022-12-19 03:22:00', '2022-12-19 03:22:00', '1671432720', 'اسکندری', 98815250),
(85, 'مجتبی', '98813757', 'infos5@gmail.com', '$2y$10$5h1a61GHk8vUoUIooVr6juzOtKz7eHAS3CEZL0If2Yh7TbExnGV36', '98813757', 'student', NULL, '2022-12-19 03:22:33', '2022-12-19 03:22:33', '1671432753', 'حبیبی', 98813757),
(86, 'مهدی', '98813320', 'infos6@gmail.com', '$2y$10$AcG6aJ1kObtUw7g62itsduNQ3TBTD0DRZwDPanm4JQJMPC6Qf0YyK', '98813320', 'student', NULL, '2022-12-19 03:23:00', '2022-12-19 03:23:00', '1671432780', 'ربیعی', 98813320),
(87, 'علیرضا', '98813897', 'infos7@gmail.com', '$2y$10$9O3HrZde0RWub/UTd/Lq1eWJq545/1kprJO99hrDlrDUFaf.Ge.Tu', '98813897', 'student', NULL, '2022-12-19 03:23:36', '2022-12-19 03:23:36', '1671432816', 'سیدزاده', 98813897),
(88, 'مهدی', '98819903', 'infos8@gmail.com', '$2y$10$zUM.URyGAZGZ/HdkgZ1qF.Vn5HQLuIrtxJKUlvYbxmUxZgVhljGs.', '98819903', 'student', NULL, '2022-12-19 03:24:05', '2022-12-19 03:24:05', '1671432845', 'جمشیدی', 98819903),
(89, 'سعید', '98818339', 'infos9@gmail.com', '$2y$10$kZSNfXyylP45n2s3IresTuJWDO5TqXiykECCKWkMIAuSPnnyPBvkq', '98818339', 'student', NULL, '2022-12-19 03:24:37', '2022-12-19 03:24:37', '1671432877', 'خسروی', 98818339),
(90, 'حسین', '98812289', 'infos10@gmail.com', '$2y$10$kMqIpASuQah5u4N8/6/2QuxfG59xuaPB4fTAHq3uygsjVoY0BDfQm', '98812289', 'student', NULL, '2022-12-19 03:25:07', '2022-12-19 03:25:07', '1671432907', 'خسروی اسفزار', 98812289),
(91, 'رضا', '98819140', 'infos11@gmail.com', '$2y$10$uVQpAOpAoDD3TfE03aKzMebJGNOWRH0TJdWh.553zB7pB3PjMLYh.', '98819140', 'student', NULL, '2022-12-19 03:25:40', '2022-12-19 03:25:40', '1671432940', 'پیامنی', 98819140),
(92, 'امیر', '98814827', 'infos12@gmail.com', '$2y$10$4Z48Ap/PJTfk/859qIxryezkHELUJTXRhqfodJnlfbB3jQff02glS', '98814827', 'student', NULL, '2022-12-19 03:26:26', '2022-12-19 03:26:26', '1671432986', 'محمدزاده', 98814827),
(93, 'مهرشاد', '98819902', 'infos13@gmail.com', '$2y$10$8kppkUbn4nultyrLMOhau.TgDINFAWAQCkj8WNaG5LyvhtLgkdObG', '98819902', 'student', NULL, '2022-12-19 03:26:52', '2022-12-19 03:26:52', '1671433012', 'حیدری', 98819902),
(94, 'حسین', '98814531', 'infos14@gmail.com', '$2y$10$0VAMhYT4RegIy6Qxj8zKduTrzX8gONTXf//N/Omu84ssxdBL5fdzC', '98814531', 'student', NULL, '2022-12-19 03:27:27', '2022-12-19 03:27:27', '1671433047', 'نقی زاده', 98814531),
(95, 'مصطفی', '98810385', 'infos15@gmail.com', '$2y$10$CmZs.l.eumHUs9X7r4ElhuS3W1VOKDXJpCImwZzjc1FS1h44pqO4.', '98810385', 'student', NULL, '2022-12-19 03:27:54', '2022-12-19 03:27:54', '1671433074', 'محمدنژاد', 98810385),
(96, 'وحید', '98813666', 'infos16@gmail.com', '$2y$10$h4ZqSFS2sb3eX8YoN8XDmupK3gmXnD2FrH92.MRKLiGlpdJJtDJ92', '98813666', 'student', 'IGjjX3X2uMo5B992ZSAJDP9X3krshquT7J5CGzh1bb9cTh5YMnuLhoWZz4g5', '2022-12-19 03:28:19', '2022-12-19 03:28:19', '1671433099', 'حاجی زاده', 98813666),
(97, 'امیرحسین', '98815649', 'infos17@gmail.com', '$2y$10$Puc7fKiLIEcpafvbh8HwNuQ2BmRwAzzh1yXz2/O/if.oRLjtuuXSi', '98815649', 'student', NULL, '2022-12-19 03:28:58', '2022-12-19 03:28:58', '1671433138', 'دادخدایی', 98815649),
(98, 'وحید', '98812477', 'infos18@gmail.com', '$2y$10$o9oKeCkaldmJq6dwojWKJOXYYDTXNCfqqiCSCajhu3KnGKoGyxWhO', '98812477', 'student', NULL, '2022-12-19 03:29:26', '2022-12-19 03:29:26', '1671433166', 'قربانی', 98812477),
(99, 'مهدی', '98810302', 'infos19@gmail.com', '$2y$10$mvqtaTfVxdzUq5.5.9LePeKDPOQ4tUiNExE4uhxE3oIF7kfHYkkri', '98810302', 'student', NULL, '2022-12-19 03:29:52', '2022-12-19 03:29:52', '1671433192', 'زادمحمود', 98810302),
(100, 'علی', '98813885', 'infos20@gmail.com', '$2y$10$Nx9toacbfi7pRZmpljB8V.X6kPWpGgCuxcVKosyttwuu15Mi8BK6S', '98813885', 'student', NULL, '2022-12-19 03:30:18', '2022-12-19 03:30:18', '1671433218', 'شبانی قمی', 98813885),
(101, 'علیرضا', '98815973', 'infos21@gmail.com', '$2y$10$SEIlTbGzR4XqtKBdgNKEMe6XPl1GJ4NKs75Zq4ytL/Z8Shb9LF9JW', '98815973', 'student', NULL, '2022-12-19 03:30:49', '2022-12-19 03:30:49', '1671433249', 'سلیمی', 98815973),
(102, 'علی', '98814774', 'infos22@gmail.com', '$2y$10$gx1kIBghasWkoq05O6F2lOK3Sbn5p9/wzRVocyy3vlwTPbUvBAtoO', '123', 'student', 'BQiBthmxw8G7znKiX5PVChFwIWHPIdVfgAlGXSAfVuhE4qzuKzvRZNUr77Mb', '2022-12-19 03:31:19', '2023-01-03 09:52:32', '1671433279', 'ملکی رشید', 98814774),
(103, 'سید محمد', '98813769', 'infos0@gmail.com', '$2y$10$DRTj8AznS6v3H3.6B1LzRelOI11imBgq.k9/2cmxyl2XLmKZDGqeK', '123', 'student', 'MJ4g5HIn00hbo9cQInIaVUvxm8KmEOxsGaTHe71NKDU1bm9UJNaUmyYnCc8e', '2022-12-19 03:32:10', '2023-01-03 08:42:12', '1671433330', 'حسینی پیشین کلاته', 98813769),
(104, 'رضا', '98812935', 'infos23@gmail.com', '$2y$10$uaY1eLUb93HIkhKhEtS4W.L3hw4TDiiZNnyRfNjwopW846fTF0P4W', '98812935', 'student', NULL, '2022-12-19 03:32:42', '2022-12-19 03:32:42', '1671433362', 'اسلام دوست', 98812935),
(105, 'علی', '98814658', 'infos24@gmail.com', '$2y$10$prr2UGAfMSLcm1rAls8BZOt/LSO2fDqx3fKDYT/qvlVP6Nqf5vHKC', '98814658', 'student', NULL, '2022-12-19 03:33:08', '2022-12-19 03:33:08', '1671433388', 'نصراللهی', 98814658),
(106, 'محمد', '98814956', 'infos25@gmail.com', '$2y$10$P1Cy2MGtEMrTjy1jDKF84uMtbov79QD0a4v7FMb/a0246/bLj6dqm', '98814956', 'student', NULL, '2022-12-19 03:33:33', '2022-12-19 03:33:33', '1671433413', 'معینیان راد', 98814956),
(107, 'فردین', '98814189', 'infos26@gmail.com', '$2y$10$Sq6AWlnVx5EzAOjBo7d9Vumpr1L8E46CcM4w5iYzJNBYxNe2e9waq', '98814189', 'student', NULL, '2022-12-19 03:34:25', '2022-12-19 03:34:25', '1671433465', 'عبدی', 98814189),
(108, 'محمد', '98812844', 'infos27@gmail.com', '$2y$10$suWIijLhEN8O6UqJGAwXxeXRKFXF6V5Ql6kdInsYKnz3pf.U7U1Z6', '98812844', 'student', NULL, '2022-12-19 03:34:49', '2022-12-19 03:34:49', '1671433489', 'ادینه', 98812844),
(109, 'محمدرضا', '98814865', 'infos28@gmail.com', '$2y$10$BGAIdTLc6yFHVRU2mN6zg.dxM8NU1v2iTZ8kH1ISSLvc8jvm7tjla', '98814865', 'student', NULL, '2022-12-19 03:35:29', '2022-12-19 03:35:29', '1671433529', 'مهدی زاده', 98814865),
(110, 'رضا', '98818056', 'infos29@gmail.com', '$2y$10$Jf1Ntg8oA.01RWwTl8XCwOwmaY13ZayKbsvy2Qg1l/akx9f1BuJXK', '98818056', 'student', NULL, '2022-12-19 03:36:03', '2022-12-19 03:36:03', '1671433563', 'کرمی لطیفی', 98818056),
(111, 'حسین', '98813277', 'infos30@gmail.com', '$2y$10$v.rejWr3aWkgR36SfcOxPuhVv4AUWP1iWzU2NprJGWLxmvQOU.5Ti', '98813277', 'student', NULL, '2022-12-19 03:36:45', '2022-12-19 03:36:45', '1671433605', 'تقی زاده', 98813277),
(112, 'هادی', '98810018', 'infos31@gmail.com', '$2y$10$dMrGb.OaFkNToPWyx.IqAO1c/yNa.ZSQvimqphkTCgtIWllyeOrzW', '98810018', 'student', NULL, '2022-12-19 03:37:11', '2022-12-19 03:37:11', '1671433631', 'حیدری', 98810018),
(113, 'سینا', '98813721', 'infos32@gmail.com', '$2y$10$phW4GAgu7Ywmmq2.KuTWm..temC1tPL4uJstwrkTzK6lmSGwTVonq', '98813721', 'student', NULL, '2022-12-19 03:37:35', '2022-12-19 03:37:35', '1671433655', 'خاتمی', 98813721),
(114, 'امیرمحمد', '98810017', 'infos33@gmail.com', '$2y$10$t.ObLiQlGvIzoGIpjvZxpO2IrZxp1I9oPkWKMwQXUd5Re9RmRpkUq', '98810017', 'student', NULL, '2022-12-19 03:37:57', '2022-12-19 03:37:57', '1671433677', 'ملکی', 98810017),
(115, 'علی', '98819901', 'infos34@gmail.com', '$2y$10$gvlrLzB1crLJf5U/QhBQ6uhiuVNvE9w0q0BAMM2rk8eVYydP/B4Km', '98819901', 'student', NULL, '2022-12-19 03:38:30', '2022-12-19 03:38:30', '1671433710', 'محمدی', 98819901),
(116, 'محمدامین', '98810932', 'infos35@gmail.com', '$2y$10$XrD4ElT52yXpgHEH1DlJ2.IGueT/iiUYgmZ4S1F8cWDTi8/jtNh0e', '98810932', 'student', NULL, '2022-12-19 03:39:23', '2022-12-19 03:39:23', '1671433763', 'خطیبی نیا', 98810932),
(117, 'علی رضا', '98815006', 'infos36@gmail.com', '$2y$10$8ea3ifJWf5c4zD9CQNwTpeUoqseqCbwBUCJ14P5FYJM5PQSseaK3e', '98815006', 'student', NULL, '2022-12-19 03:40:24', '2022-12-19 04:59:14', '1671433824', 'ریاض الحسینی', 98815006),
(118, 'رضا', '98811985', 'infos37@gmail.com', '$2y$10$eYzXcjeKWEmJtbB7nkSgXO9kIwz1EeX4Yx5U3oqlTwzML6EW937ue', '98811985', 'student', 'dEFsAggejICTmsTcBiluGglrAGK2Fnj3BkZJC6e5ro78pVQqG2qLTGT1M8NU', '2022-12-20 03:38:04', '2022-12-20 03:38:04', '1671520084', 'جلالی', 98811985);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images_setting`
--
ALTER TABLE `images_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `intership`
--
ALTER TABLE `intership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `std_number` (`std_number`(191));

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `single_setting`
--
ALTER TABLE `single_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images_setting`
--
ALTER TABLE `images_setting`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `intership`
--
ALTER TABLE `intership`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `single_setting`
--
ALTER TABLE `single_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
