-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jul 2023 pada 05.26
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `counttrees`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `country_phone_code` varchar(255) NOT NULL,
  `country_icon_link` text NOT NULL COMMENT 'Country Icon Link',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`, `country_phone_code`, `country_icon_link`, `created_at`, `updated_at`) VALUES
(1, 'BD', 'Bangladesh', '880', 'https://flagsapi.com/BD/flat/64.png', 1688352477, 1688352477),
(2, 'BE', 'Belgium', '32', 'https://flagsapi.com/BE/flat/64.png', 1688352477, 1688352477),
(3, 'BF', 'Burkina Faso', '226', 'https://flagsapi.com/BF/flat/64.png', 1688352477, 1688352477),
(4, 'BG', 'Bulgaria', '359', 'https://flagsapi.com/BG/flat/64.png', 1688352477, 1688352477),
(5, 'BA', 'Bosnia and Herzegovina', '387', 'https://flagsapi.com/BA/flat/64.png', 1688352478, 1688352478),
(6, 'BB', 'Barbados', '+1-246', 'https://flagsapi.com/BB/flat/64.png', 1688352478, 1688352478),
(7, 'WF', 'Wallis and Futuna', '681', 'https://flagsapi.com/WF/flat/64.png', 1688352478, 1688352478),
(8, 'BL', 'Saint Barthelemy', '590', 'https://flagsapi.com/BL/flat/64.png', 1688352478, 1688352478),
(9, 'BM', 'Bermuda', '+1-441', 'https://flagsapi.com/BM/flat/64.png', 1688352478, 1688352478),
(10, 'BN', 'Brunei', '673', 'https://flagsapi.com/BN/flat/64.png', 1688352478, 1688352478),
(11, 'BO', 'Bolivia', '591', 'https://flagsapi.com/BO/flat/64.png', 1688352478, 1688352478),
(12, 'BH', 'Bahrain', '973', 'https://flagsapi.com/BH/flat/64.png', 1688352478, 1688352478),
(13, 'BI', 'Burundi', '257', 'https://flagsapi.com/BI/flat/64.png', 1688352478, 1688352478),
(14, 'BJ', 'Benin', '229', 'https://flagsapi.com/BJ/flat/64.png', 1688352478, 1688352478),
(15, 'BT', 'Bhutan', '975', 'https://flagsapi.com/BT/flat/64.png', 1688352478, 1688352478),
(16, 'JM', 'Jamaica', '+1-876', 'https://flagsapi.com/JM/flat/64.png', 1688352478, 1688352478),
(17, 'BV', 'Bouvet Island', '', 'https://flagsapi.com/BV/flat/64.png', 1688352478, 1688352478),
(18, 'BW', 'Botswana', '267', 'https://flagsapi.com/BW/flat/64.png', 1688352478, 1688352478),
(19, 'WS', 'Samoa', '685', 'https://flagsapi.com/WS/flat/64.png', 1688352478, 1688352478),
(20, 'BQ', 'Bonaire, Saint Eustatius and Saba ', '599', 'https://flagsapi.com/BQ/flat/64.png', 1688352478, 1688352478),
(21, 'BR', 'Brazil', '55', 'https://flagsapi.com/BR/flat/64.png', 1688352478, 1688352478),
(22, 'BS', 'Bahamas', '+1-242', 'https://flagsapi.com/BS/flat/64.png', 1688352478, 1688352478),
(23, 'JE', 'Jersey', '+44-1534', 'https://flagsapi.com/JE/flat/64.png', 1688352478, 1688352478),
(24, 'BY', 'Belarus', '375', 'https://flagsapi.com/BY/flat/64.png', 1688352478, 1688352478),
(25, 'BZ', 'Belize', '501', 'https://flagsapi.com/BZ/flat/64.png', 1688352478, 1688352478),
(26, 'RU', 'Russia', '7', 'https://flagsapi.com/RU/flat/64.png', 1688352478, 1688352478),
(27, 'RW', 'Rwanda', '250', 'https://flagsapi.com/RW/flat/64.png', 1688352478, 1688352478),
(28, 'RS', 'Serbia', '381', 'https://flagsapi.com/RS/flat/64.png', 1688352479, 1688352479),
(29, 'TL', 'East Timor', '670', 'https://flagsapi.com/TL/flat/64.png', 1688352479, 1688352479),
(30, 'RE', 'Reunion', '262', 'https://flagsapi.com/RE/flat/64.png', 1688352479, 1688352479),
(31, 'TM', 'Turkmenistan', '993', 'https://flagsapi.com/TM/flat/64.png', 1688352479, 1688352479),
(32, 'TJ', 'Tajikistan', '992', 'https://flagsapi.com/TJ/flat/64.png', 1688352479, 1688352479),
(33, 'RO', 'Romania', '40', 'https://flagsapi.com/RO/flat/64.png', 1688352479, 1688352479),
(34, 'TK', 'Tokelau', '690', 'https://flagsapi.com/TK/flat/64.png', 1688352479, 1688352479),
(35, 'GW', 'Guinea-Bissau', '245', 'https://flagsapi.com/GW/flat/64.png', 1688352479, 1688352479),
(36, 'GU', 'Guam', '+1-671', 'https://flagsapi.com/GU/flat/64.png', 1688352479, 1688352479),
(37, 'GT', 'Guatemala', '502', 'https://flagsapi.com/GT/flat/64.png', 1688352479, 1688352479),
(38, 'GS', 'South Georgia and the South Sandwich Islands', '', 'https://flagsapi.com/GS/flat/64.png', 1688352479, 1688352479),
(39, 'GR', 'Greece', '30', 'https://flagsapi.com/GR/flat/64.png', 1688352479, 1688352479),
(40, 'GQ', 'Equatorial Guinea', '240', 'https://flagsapi.com/GQ/flat/64.png', 1688352479, 1688352479),
(41, 'GP', 'Guadeloupe', '590', 'https://flagsapi.com/GP/flat/64.png', 1688352479, 1688352479),
(42, 'JP', 'Japan', '81', 'https://flagsapi.com/JP/flat/64.png', 1688352479, 1688352479),
(43, 'GY', 'Guyana', '592', 'https://flagsapi.com/GY/flat/64.png', 1688352479, 1688352479),
(44, 'GG', 'Guernsey', '+44-1481', 'https://flagsapi.com/GG/flat/64.png', 1688352479, 1688352479),
(45, 'GF', 'French Guiana', '594', 'https://flagsapi.com/GF/flat/64.png', 1688352479, 1688352479),
(46, 'GE', 'Georgia', '995', 'https://flagsapi.com/GE/flat/64.png', 1688352479, 1688352479),
(47, 'GD', 'Grenada', '+1-473', 'https://flagsapi.com/GD/flat/64.png', 1688352479, 1688352479),
(48, 'GB', 'United Kingdom', '44', 'https://flagsapi.com/GB/flat/64.png', 1688352479, 1688352479),
(49, 'GA', 'Gabon', '241', 'https://flagsapi.com/GA/flat/64.png', 1688352480, 1688352480),
(50, 'SV', 'El Salvador', '503', 'https://flagsapi.com/SV/flat/64.png', 1688352480, 1688352480),
(51, 'GN', 'Guinea', '224', 'https://flagsapi.com/GN/flat/64.png', 1688352480, 1688352480),
(52, 'GM', 'Gambia', '220', 'https://flagsapi.com/GM/flat/64.png', 1688352480, 1688352480),
(53, 'GL', 'Greenland', '299', 'https://flagsapi.com/GL/flat/64.png', 1688352480, 1688352480),
(54, 'GI', 'Gibraltar', '350', 'https://flagsapi.com/GI/flat/64.png', 1688352480, 1688352480),
(55, 'GH', 'Ghana', '233', 'https://flagsapi.com/GH/flat/64.png', 1688352480, 1688352480),
(56, 'OM', 'Oman', '968', 'https://flagsapi.com/OM/flat/64.png', 1688352480, 1688352480),
(57, 'TN', 'Tunisia', '216', 'https://flagsapi.com/TN/flat/64.png', 1688352480, 1688352480),
(58, 'JO', 'Jordan', '962', 'https://flagsapi.com/JO/flat/64.png', 1688352480, 1688352480),
(59, 'HR', 'Croatia', '385', 'https://flagsapi.com/HR/flat/64.png', 1688352480, 1688352480),
(60, 'HT', 'Haiti', '509', 'https://flagsapi.com/HT/flat/64.png', 1688352480, 1688352480),
(61, 'HU', 'Hungary', '36', 'https://flagsapi.com/HU/flat/64.png', 1688352480, 1688352480),
(62, 'HK', 'Hong Kong', '852', 'https://flagsapi.com/HK/flat/64.png', 1688352480, 1688352480),
(63, 'HN', 'Honduras', '504', 'https://flagsapi.com/HN/flat/64.png', 1688352480, 1688352480),
(64, 'HM', 'Heard Island and McDonald Islands', ' ', 'https://flagsapi.com/HM/flat/64.png', 1688352480, 1688352480),
(65, 'VE', 'Venezuela', '58', 'https://flagsapi.com/VE/flat/64.png', 1688352480, 1688352480),
(66, 'PR', 'Puerto Rico', '+1-787 and 1-939', 'https://flagsapi.com/PR/flat/64.png', 1688352480, 1688352480),
(67, 'PS', 'Palestinian Territory', '970', 'https://flagsapi.com/PS/flat/64.png', 1688352480, 1688352480),
(68, 'PW', 'Palau', '680', 'https://flagsapi.com/PW/flat/64.png', 1688352480, 1688352480),
(69, 'PT', 'Portugal', '351', 'https://flagsapi.com/PT/flat/64.png', 1688352481, 1688352481),
(70, 'SJ', 'Svalbard and Jan Mayen', '47', 'https://flagsapi.com/SJ/flat/64.png', 1688352481, 1688352481),
(71, 'PY', 'Paraguay', '595', 'https://flagsapi.com/PY/flat/64.png', 1688352481, 1688352481),
(72, 'IQ', 'Iraq', '964', 'https://flagsapi.com/IQ/flat/64.png', 1688352481, 1688352481),
(73, 'PA', 'Panama', '507', 'https://flagsapi.com/PA/flat/64.png', 1688352481, 1688352481),
(74, 'PF', 'French Polynesia', '689', 'https://flagsapi.com/PF/flat/64.png', 1688352481, 1688352481),
(75, 'PG', 'Papua New Guinea', '675', 'https://flagsapi.com/PG/flat/64.png', 1688352481, 1688352481),
(76, 'PE', 'Peru', '51', 'https://flagsapi.com/PE/flat/64.png', 1688352482, 1688352482),
(77, 'PK', 'Pakistan', '92', 'https://flagsapi.com/PK/flat/64.png', 1688352482, 1688352482),
(78, 'PH', 'Philippines', '63', 'https://flagsapi.com/PH/flat/64.png', 1688352482, 1688352482),
(79, 'PN', 'Pitcairn', '870', 'https://flagsapi.com/PN/flat/64.png', 1688352482, 1688352482),
(80, 'PL', 'Poland', '48', 'https://flagsapi.com/PL/flat/64.png', 1688352482, 1688352482),
(81, 'PM', 'Saint Pierre and Miquelon', '508', 'https://flagsapi.com/PM/flat/64.png', 1688352482, 1688352482),
(82, 'ZM', 'Zambia', '260', 'https://flagsapi.com/ZM/flat/64.png', 1688352482, 1688352482),
(83, 'EH', 'Western Sahara', '212', 'https://flagsapi.com/EH/flat/64.png', 1688352482, 1688352482),
(84, 'EE', 'Estonia', '372', 'https://flagsapi.com/EE/flat/64.png', 1688352482, 1688352482),
(85, 'EG', 'Egypt', '20', 'https://flagsapi.com/EG/flat/64.png', 1688352482, 1688352482),
(86, 'ZA', 'South Africa', '27', 'https://flagsapi.com/ZA/flat/64.png', 1688352482, 1688352482),
(87, 'EC', 'Ecuador', '593', 'https://flagsapi.com/EC/flat/64.png', 1688352482, 1688352482),
(88, 'IT', 'Italy', '39', 'https://flagsapi.com/IT/flat/64.png', 1688352482, 1688352482),
(89, 'VN', 'Vietnam', '84', 'https://flagsapi.com/VN/flat/64.png', 1688352483, 1688352483),
(90, 'SB', 'Solomon Islands', '677', 'https://flagsapi.com/SB/flat/64.png', 1688352483, 1688352483),
(91, 'ET', 'Ethiopia', '251', 'https://flagsapi.com/ET/flat/64.png', 1688352483, 1688352483),
(92, 'SO', 'Somalia', '252', 'https://flagsapi.com/SO/flat/64.png', 1688352483, 1688352483),
(93, 'ZW', 'Zimbabwe', '263', 'https://flagsapi.com/ZW/flat/64.png', 1688352483, 1688352483),
(94, 'SA', 'Saudi Arabia', '966', 'https://flagsapi.com/SA/flat/64.png', 1688352483, 1688352483),
(95, 'ES', 'Spain', '34', 'https://flagsapi.com/ES/flat/64.png', 1688352483, 1688352483),
(96, 'ER', 'Eritrea', '291', 'https://flagsapi.com/ER/flat/64.png', 1688352483, 1688352483),
(97, 'ME', 'Montenegro', '382', 'https://flagsapi.com/ME/flat/64.png', 1688352483, 1688352483),
(98, 'MD', 'Moldova', '373', 'https://flagsapi.com/MD/flat/64.png', 1688352483, 1688352483),
(99, 'MG', 'Madagascar', '261', 'https://flagsapi.com/MG/flat/64.png', 1688352483, 1688352483),
(100, 'MF', 'Saint Martin', '590', 'https://flagsapi.com/MF/flat/64.png', 1688352483, 1688352483),
(101, 'MA', 'Morocco', '212', 'https://flagsapi.com/MA/flat/64.png', 1688352483, 1688352483),
(102, 'MC', 'Monaco', '377', 'https://flagsapi.com/MC/flat/64.png', 1688352483, 1688352483),
(103, 'UZ', 'Uzbekistan', '998', 'https://flagsapi.com/UZ/flat/64.png', 1688352483, 1688352483),
(104, 'MM', 'Myanmar', '95', 'https://flagsapi.com/MM/flat/64.png', 1688352483, 1688352483),
(105, 'ML', 'Mali', '223', 'https://flagsapi.com/ML/flat/64.png', 1688352483, 1688352483),
(106, 'MO', 'Macao', '853', 'https://flagsapi.com/MO/flat/64.png', 1688352483, 1688352483),
(107, 'MN', 'Mongolia', '976', 'https://flagsapi.com/MN/flat/64.png', 1688352483, 1688352483),
(108, 'MH', 'Marshall Islands', '692', 'https://flagsapi.com/MH/flat/64.png', 1688352483, 1688352483),
(109, 'MK', 'Macedonia', '389', 'https://flagsapi.com/MK/flat/64.png', 1688352484, 1688352484),
(110, 'MU', 'Mauritius', '230', 'https://flagsapi.com/MU/flat/64.png', 1688352484, 1688352484),
(111, 'MT', 'Malta', '356', 'https://flagsapi.com/MT/flat/64.png', 1688352484, 1688352484),
(112, 'MW', 'Malawi', '265', 'https://flagsapi.com/MW/flat/64.png', 1688352484, 1688352484),
(113, 'MV', 'Maldives', '960', 'https://flagsapi.com/MV/flat/64.png', 1688352484, 1688352484),
(114, 'MQ', 'Martinique', '596', 'https://flagsapi.com/MQ/flat/64.png', 1688352484, 1688352484),
(115, 'MP', 'Northern Mariana Islands', '+1-670', 'https://flagsapi.com/MP/flat/64.png', 1688352484, 1688352484),
(116, 'MS', 'Montserrat', '+1-664', 'https://flagsapi.com/MS/flat/64.png', 1688352484, 1688352484),
(117, 'MR', 'Mauritania', '222', 'https://flagsapi.com/MR/flat/64.png', 1688352484, 1688352484),
(118, 'IM', 'Isle of Man', '+44-1624', 'https://flagsapi.com/IM/flat/64.png', 1688352484, 1688352484),
(119, 'UG', 'Uganda', '256', 'https://flagsapi.com/UG/flat/64.png', 1688352484, 1688352484),
(120, 'TZ', 'Tanzania', '255', 'https://flagsapi.com/TZ/flat/64.png', 1688352484, 1688352484),
(121, 'MY', 'Malaysia', '60', 'https://flagsapi.com/MY/flat/64.png', 1688352484, 1688352484),
(122, 'MX', 'Mexico', '52', 'https://flagsapi.com/MX/flat/64.png', 1688352484, 1688352484),
(123, 'IL', 'Israel', '972', 'https://flagsapi.com/IL/flat/64.png', 1688352484, 1688352484),
(124, 'FR', 'France', '33', 'https://flagsapi.com/FR/flat/64.png', 1688352484, 1688352484),
(125, 'IO', 'British Indian Ocean Territory', '246', 'https://flagsapi.com/IO/flat/64.png', 1688352484, 1688352484),
(126, 'SH', 'Saint Helena', '290', 'https://flagsapi.com/SH/flat/64.png', 1688352484, 1688352484),
(127, 'FI', 'Finland', '358', 'https://flagsapi.com/FI/flat/64.png', 1688352484, 1688352484),
(128, 'FJ', 'Fiji', '679', 'https://flagsapi.com/FJ/flat/64.png', 1688352484, 1688352484),
(129, 'FK', 'Falkland Islands', '500', 'https://flagsapi.com/FK/flat/64.png', 1688352484, 1688352484),
(130, 'FM', 'Micronesia', '691', 'https://flagsapi.com/FM/flat/64.png', 1688352485, 1688352485),
(131, 'FO', 'Faroe Islands', '298', 'https://flagsapi.com/FO/flat/64.png', 1688352485, 1688352485),
(132, 'NI', 'Nicaragua', '505', 'https://flagsapi.com/NI/flat/64.png', 1688352485, 1688352485),
(133, 'NL', 'Netherlands', '31', 'https://flagsapi.com/NL/flat/64.png', 1688352485, 1688352485),
(134, 'NO', 'Norway', '47', 'https://flagsapi.com/NO/flat/64.png', 1688352485, 1688352485),
(135, 'NA', 'Namibia', '264', 'https://flagsapi.com/NA/flat/64.png', 1688352485, 1688352485),
(136, 'VU', 'Vanuatu', '678', 'https://flagsapi.com/VU/flat/64.png', 1688352485, 1688352485),
(137, 'NC', 'New Caledonia', '687', 'https://flagsapi.com/NC/flat/64.png', 1688352485, 1688352485),
(138, 'NE', 'Niger', '227', 'https://flagsapi.com/NE/flat/64.png', 1688352485, 1688352485),
(139, 'NF', 'Norfolk Island', '672', 'https://flagsapi.com/NF/flat/64.png', 1688352485, 1688352485),
(140, 'NG', 'Nigeria', '234', 'https://flagsapi.com/NG/flat/64.png', 1688352485, 1688352485),
(141, 'NZ', 'New Zealand', '64', 'https://flagsapi.com/NZ/flat/64.png', 1688352485, 1688352485),
(142, 'NP', 'Nepal', '977', 'https://flagsapi.com/NP/flat/64.png', 1688352485, 1688352485),
(143, 'NR', 'Nauru', '674', 'https://flagsapi.com/NR/flat/64.png', 1688352485, 1688352485),
(144, 'NU', 'Niue', '683', 'https://flagsapi.com/NU/flat/64.png', 1688352485, 1688352485),
(145, 'CK', 'Cook Islands', '682', 'https://flagsapi.com/CK/flat/64.png', 1688352485, 1688352485),
(146, 'XK', 'Kosovo', '', 'https://flagsapi.com/XK/flat/64.png', 1688352485, 1688352485),
(147, 'CI', 'Ivory Coast', '225', 'https://flagsapi.com/CI/flat/64.png', 1688352486, 1688352486),
(148, 'CH', 'Switzerland', '41', 'https://flagsapi.com/CH/flat/64.png', 1688352486, 1688352486),
(149, 'CO', 'Colombia', '57', 'https://flagsapi.com/CO/flat/64.png', 1688352486, 1688352486),
(150, 'CN', 'China', '86', 'https://flagsapi.com/CN/flat/64.png', 1688352486, 1688352486),
(151, 'CM', 'Cameroon', '237', 'https://flagsapi.com/CM/flat/64.png', 1688352486, 1688352486),
(152, 'CL', 'Chile', '56', 'https://flagsapi.com/CL/flat/64.png', 1688352486, 1688352486),
(153, 'CC', 'Cocos Islands', '61', 'https://flagsapi.com/CC/flat/64.png', 1688352486, 1688352486),
(154, 'CA', 'Canada', '1', 'https://flagsapi.com/CA/flat/64.png', 1688352486, 1688352486),
(155, 'CG', 'Republic of the Congo', '242', 'https://flagsapi.com/CG/flat/64.png', 1688352486, 1688352486),
(156, 'CF', 'Central African Republic', '236', 'https://flagsapi.com/CF/flat/64.png', 1688352486, 1688352486),
(157, 'CD', 'Democratic Republic of the Congo', '243', 'https://flagsapi.com/CD/flat/64.png', 1688352486, 1688352486),
(158, 'CZ', 'Czech Republic', '420', 'https://flagsapi.com/CZ/flat/64.png', 1688352486, 1688352486),
(159, 'CY', 'Cyprus', '357', 'https://flagsapi.com/CY/flat/64.png', 1688352486, 1688352486),
(160, 'CX', 'Christmas Island', '61', 'https://flagsapi.com/CX/flat/64.png', 1688352486, 1688352486),
(161, 'CR', 'Costa Rica', '506', 'https://flagsapi.com/CR/flat/64.png', 1688352486, 1688352486),
(162, 'CW', 'Curacao', '599', 'https://flagsapi.com/CW/flat/64.png', 1688352487, 1688352487),
(163, 'CV', 'Cape Verde', '238', 'https://flagsapi.com/CV/flat/64.png', 1688352487, 1688352487),
(164, 'CU', 'Cuba', '53', 'https://flagsapi.com/CU/flat/64.png', 1688352487, 1688352487),
(165, 'SZ', 'Swaziland', '268', 'https://flagsapi.com/SZ/flat/64.png', 1688352487, 1688352487),
(166, 'SY', 'Syria', '963', 'https://flagsapi.com/SY/flat/64.png', 1688352487, 1688352487),
(167, 'SX', 'Sint Maarten', '599', 'https://flagsapi.com/SX/flat/64.png', 1688352487, 1688352487),
(168, 'KG', 'Kyrgyzstan', '996', 'https://flagsapi.com/KG/flat/64.png', 1688352487, 1688352487),
(169, 'KE', 'Kenya', '254', 'https://flagsapi.com/KE/flat/64.png', 1688352487, 1688352487),
(170, 'SS', 'South Sudan', '211', 'https://flagsapi.com/SS/flat/64.png', 1688352487, 1688352487),
(171, 'SR', 'Suriname', '597', 'https://flagsapi.com/SR/flat/64.png', 1688352487, 1688352487),
(172, 'KI', 'Kiribati', '686', 'https://flagsapi.com/KI/flat/64.png', 1688352487, 1688352487),
(173, 'KH', 'Cambodia', '855', 'https://flagsapi.com/KH/flat/64.png', 1688352487, 1688352487),
(174, 'KN', 'Saint Kitts and Nevis', '+1-869', 'https://flagsapi.com/KN/flat/64.png', 1688352488, 1688352488),
(175, 'KM', 'Comoros', '269', 'https://flagsapi.com/KM/flat/64.png', 1688352488, 1688352488),
(176, 'ST', 'Sao Tome and Principe', '239', 'https://flagsapi.com/ST/flat/64.png', 1688352488, 1688352488),
(177, 'SK', 'Slovakia', '421', 'https://flagsapi.com/SK/flat/64.png', 1688352488, 1688352488),
(178, 'KR', 'South Korea', '82', 'https://flagsapi.com/KR/flat/64.png', 1688352488, 1688352488),
(179, 'SI', 'Slovenia', '386', 'https://flagsapi.com/SI/flat/64.png', 1688352488, 1688352488),
(180, 'KP', 'North Korea', '850', 'https://flagsapi.com/KP/flat/64.png', 1688352488, 1688352488),
(181, 'KW', 'Kuwait', '965', 'https://flagsapi.com/KW/flat/64.png', 1688352488, 1688352488),
(182, 'SN', 'Senegal', '221', 'https://flagsapi.com/SN/flat/64.png', 1688352488, 1688352488),
(183, 'SM', 'San Marino', '378', 'https://flagsapi.com/SM/flat/64.png', 1688352488, 1688352488),
(184, 'SL', 'Sierra Leone', '232', 'https://flagsapi.com/SL/flat/64.png', 1688352489, 1688352489),
(185, 'SC', 'Seychelles', '248', 'https://flagsapi.com/SC/flat/64.png', 1688352489, 1688352489),
(186, 'KZ', 'Kazakhstan', '7', 'https://flagsapi.com/KZ/flat/64.png', 1688352489, 1688352489),
(187, 'KY', 'Cayman Islands', '+1-345', 'https://flagsapi.com/KY/flat/64.png', 1688352489, 1688352489),
(188, 'SG', 'Singapore', '65', 'https://flagsapi.com/SG/flat/64.png', 1688352489, 1688352489),
(189, 'SE', 'Sweden', '46', 'https://flagsapi.com/SE/flat/64.png', 1688352489, 1688352489),
(190, 'SD', 'Sudan', '249', 'https://flagsapi.com/SD/flat/64.png', 1688352489, 1688352489),
(191, 'DO', 'Dominican Republic', '+1-809 and 1-829', 'https://flagsapi.com/DO/flat/64.png', 1688352489, 1688352489),
(192, 'DM', 'Dominica', '+1-767', 'https://flagsapi.com/DM/flat/64.png', 1688352489, 1688352489),
(193, 'DJ', 'Djibouti', '253', 'https://flagsapi.com/DJ/flat/64.png', 1688352489, 1688352489),
(194, 'DK', 'Denmark', '45', 'https://flagsapi.com/DK/flat/64.png', 1688352489, 1688352489),
(195, 'VG', 'British Virgin Islands', '+1-284', 'https://flagsapi.com/VG/flat/64.png', 1688352489, 1688352489),
(196, 'DE', 'Germany', '49', 'https://flagsapi.com/DE/flat/64.png', 1688352489, 1688352489),
(197, 'YE', 'Yemen', '967', 'https://flagsapi.com/YE/flat/64.png', 1688352489, 1688352489),
(198, 'DZ', 'Algeria', '213', 'https://flagsapi.com/DZ/flat/64.png', 1688352489, 1688352489),
(199, 'US', 'United States', '1', 'https://flagsapi.com/US/flat/64.png', 1688352489, 1688352489),
(200, 'UY', 'Uruguay', '598', 'https://flagsapi.com/UY/flat/64.png', 1688352489, 1688352489),
(201, 'YT', 'Mayotte', '262', 'https://flagsapi.com/YT/flat/64.png', 1688352489, 1688352489),
(202, 'UM', 'United States Minor Outlying Islands', '1', 'https://flagsapi.com/UM/flat/64.png', 1688352489, 1688352489),
(203, 'LB', 'Lebanon', '961', 'https://flagsapi.com/LB/flat/64.png', 1688352489, 1688352489),
(204, 'LC', 'Saint Lucia', '+1-758', 'https://flagsapi.com/LC/flat/64.png', 1688352490, 1688352490),
(205, 'LA', 'Laos', '856', 'https://flagsapi.com/LA/flat/64.png', 1688352490, 1688352490),
(206, 'TV', 'Tuvalu', '688', 'https://flagsapi.com/TV/flat/64.png', 1688352490, 1688352490),
(207, 'TW', 'Taiwan', '886', 'https://flagsapi.com/TW/flat/64.png', 1688352490, 1688352490),
(208, 'TT', 'Trinidad and Tobago', '+1-868', 'https://flagsapi.com/TT/flat/64.png', 1688352490, 1688352490),
(209, 'TR', 'Turkey', '90', 'https://flagsapi.com/TR/flat/64.png', 1688352490, 1688352490),
(210, 'LK', 'Sri Lanka', '94', 'https://flagsapi.com/LK/flat/64.png', 1688352490, 1688352490),
(211, 'LI', 'Liechtenstein', '423', 'https://flagsapi.com/LI/flat/64.png', 1688352490, 1688352490),
(212, 'LV', 'Latvia', '371', 'https://flagsapi.com/LV/flat/64.png', 1688352490, 1688352490),
(213, 'TO', 'Tonga', '676', 'https://flagsapi.com/TO/flat/64.png', 1688352490, 1688352490),
(214, 'LT', 'Lithuania', '370', 'https://flagsapi.com/LT/flat/64.png', 1688352490, 1688352490),
(215, 'LU', 'Luxembourg', '352', 'https://flagsapi.com/LU/flat/64.png', 1688352490, 1688352490),
(216, 'LR', 'Liberia', '231', 'https://flagsapi.com/LR/flat/64.png', 1688352490, 1688352490),
(217, 'LS', 'Lesotho', '266', 'https://flagsapi.com/LS/flat/64.png', 1688352490, 1688352490),
(218, 'TH', 'Thailand', '66', 'https://flagsapi.com/TH/flat/64.png', 1688352490, 1688352490),
(219, 'TF', 'French Southern Territories', '', 'https://flagsapi.com/TF/flat/64.png', 1688352490, 1688352490),
(220, 'TG', 'Togo', '228', 'https://flagsapi.com/TG/flat/64.png', 1688352490, 1688352490),
(221, 'TD', 'Chad', '235', 'https://flagsapi.com/TD/flat/64.png', 1688352490, 1688352490),
(222, 'TC', 'Turks and Caicos Islands', '+1-649', 'https://flagsapi.com/TC/flat/64.png', 1688352490, 1688352490),
(223, 'LY', 'Libya', '218', 'https://flagsapi.com/LY/flat/64.png', 1688352490, 1688352490),
(224, 'VA', 'Vatican', '379', 'https://flagsapi.com/VA/flat/64.png', 1688352490, 1688352490),
(225, 'VC', 'Saint Vincent and the Grenadines', '+1-784', 'https://flagsapi.com/VC/flat/64.png', 1688352490, 1688352490),
(226, 'AE', 'United Arab Emirates', '971', 'https://flagsapi.com/AE/flat/64.png', 1688352491, 1688352491),
(227, 'AD', 'Andorra', '376', 'https://flagsapi.com/AD/flat/64.png', 1688352491, 1688352491),
(228, 'AG', 'Antigua and Barbuda', '+1-268', 'https://flagsapi.com/AG/flat/64.png', 1688352491, 1688352491),
(229, 'AF', 'Afghanistan', '93', 'https://flagsapi.com/AF/flat/64.png', 1688352491, 1688352491),
(230, 'AI', 'Anguilla', '+1-264', 'https://flagsapi.com/AI/flat/64.png', 1688352491, 1688352491),
(231, 'VI', 'U.S. Virgin Islands', '+1-340', 'https://flagsapi.com/VI/flat/64.png', 1688352491, 1688352491),
(232, 'IS', 'Iceland', '354', 'https://flagsapi.com/IS/flat/64.png', 1688352491, 1688352491),
(233, 'IR', 'Iran', '98', 'https://flagsapi.com/IR/flat/64.png', 1688352491, 1688352491),
(234, 'AM', 'Armenia', '374', 'https://flagsapi.com/AM/flat/64.png', 1688352491, 1688352491),
(235, 'AL', 'Albania', '355', 'https://flagsapi.com/AL/flat/64.png', 1688352491, 1688352491),
(236, 'AO', 'Angola', '244', 'https://flagsapi.com/AO/flat/64.png', 1688352491, 1688352491),
(237, 'AQ', 'Antarctica', '', 'https://flagsapi.com/AQ/flat/64.png', 1688352491, 1688352491),
(238, 'AS', 'American Samoa', '+1-684', 'https://flagsapi.com/AS/flat/64.png', 1688352491, 1688352491),
(239, 'AR', 'Argentina', '54', 'https://flagsapi.com/AR/flat/64.png', 1688352491, 1688352491),
(240, 'AU', 'Australia', '61', 'https://flagsapi.com/AU/flat/64.png', 1688352491, 1688352491),
(241, 'AT', 'Austria', '43', 'https://flagsapi.com/AT/flat/64.png', 1688352491, 1688352491),
(242, 'AW', 'Aruba', '297', 'https://flagsapi.com/AW/flat/64.png', 1688352491, 1688352491),
(243, 'IN', 'India', '91', 'https://flagsapi.com/IN/flat/64.png', 1688352491, 1688352491),
(244, 'AX', 'Aland Islands', '+358-18', 'https://flagsapi.com/AX/flat/64.png', 1688352491, 1688352491),
(245, 'AZ', 'Azerbaijan', '994', 'https://flagsapi.com/AZ/flat/64.png', 1688352491, 1688352491),
(246, 'IE', 'Ireland', '353', 'https://flagsapi.com/IE/flat/64.png', 1688352491, 1688352491),
(247, 'ID', 'Indonesia', '62', 'https://flagsapi.com/ID/flat/64.png', 1688352492, 1688352492),
(248, 'UA', 'Ukraine', '380', 'https://flagsapi.com/UA/flat/64.png', 1688352492, 1688352492),
(249, 'QA', 'Qatar', '974', 'https://flagsapi.com/QA/flat/64.png', 1688352492, 1688352492),
(250, 'MZ', 'Mozambique', '258', 'https://flagsapi.com/MZ/flat/64.png', 1688352492, 1688352492);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_country_code_unique` (`country_code`),
  ADD UNIQUE KEY `countries_country_name_unique` (`country_name`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
