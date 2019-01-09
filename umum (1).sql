-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jan 2019 pada 09.58
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `umum`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `driver`
--

CREATE TABLE `driver` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kode` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `driver`
--

INSERT INTO `driver` (`id`, `nama`, `kode`, `status`) VALUES
(1, 'Taufan Adiyasa', 'D-01', 0),
(2, 'Ade Suherman', 'D-02', 0),
(3, 'Slamet', 'D-03', 0),
(4, 'Rachmat Jaedi', 'D-04', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kota`
--

CREATE TABLE `kota` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `propinsiId` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kota`
--

INSERT INTO `kota` (`id`, `nama`, `propinsiId`) VALUES
(1, 'Kabupaten Aceh Barat', 1),
(2, 'Kabupaten Aceh Barat Daya', 1),
(3, 'Kabupaten Aceh Besar', 1),
(4, 'Kabupaten Aceh Jaya', 1),
(5, 'Kabupaten Aceh Selatan', 1),
(6, 'Kabupaten Aceh Singkil', 1),
(7, 'Kabupaten Aceh Tamiang', 1),
(8, 'Kabupaten Aceh Tengah', 1),
(9, 'Kabupaten Aceh Tenggara', 1),
(10, 'Kabupaten Aceh Timur', 1),
(11, 'Kabupaten Aceh Utara', 1),
(12, 'Kabupaten Bener Meriah', 1),
(13, 'Kabupaten Bireuen', 1),
(14, 'Kabupaten Gayo Lues', 1),
(15, 'Kabupaten Nagan Raya', 1),
(16, 'Kabupaten Pidie', 1),
(17, 'Kabupaten Pidie Jaya', 1),
(18, 'Kabupaten Simeulue', 1),
(19, 'Kota Banda Aceh', 1),
(20, 'Kota Langsa', 1),
(21, 'Kota Lhokseumawe', 1),
(22, 'Kota Sabang', 1),
(23, 'Kota Subulussalam', 1),
(24, 'Kabupaten Asahan', 2),
(25, 'Kabupaten Batubara', 2),
(26, 'Kabupaten Dairi', 2),
(27, 'Kabupaten Deli Serdang', 2),
(28, 'Kabupaten Humbang Hasundutan', 2),
(29, 'Kabupaten Karo', 2),
(30, 'Kabupaten Labuhanbatu', 2),
(31, 'Kabupaten Labuhanbatu Selatan', 2),
(32, 'Kabupaten Labuhanbatu Utara', 2),
(33, 'Kabupaten Langkat', 2),
(34, 'Kabupaten Mandailing Natal', 2),
(35, 'Kabupaten Nias', 2),
(36, 'Kabupaten Nias Barat', 2),
(37, 'Kabupaten Nias Selatan', 2),
(38, 'Kabupaten Nias Utara', 2),
(39, 'Kabupaten Padang Lawas', 2),
(40, 'Kabupaten Padang Lawas Utara', 2),
(41, 'Kabupaten Pakpak Bharat', 2),
(42, 'Kabupaten Samosir', 2),
(43, 'Kabupaten Serdang Bedagai', 2),
(44, 'Kabupaten Simalungun', 2),
(45, 'Kabupaten Tapanuli Selatan', 2),
(46, 'Kabupaten Tapanuli Tengah', 2),
(47, 'Kabupaten Tapanuli Utara', 2),
(48, 'Kabupaten Toba Samosir', 2),
(49, 'Kota Binjai', 2),
(50, 'Kota Gunungsitoli', 2),
(51, 'Kota Medan', 2),
(52, 'Kota Padangsidempuan', 2),
(53, 'Kota Pematangsiantar', 2),
(54, 'Kota Sibolga', 2),
(55, 'Kota Tanjungbalai', 2),
(56, 'Kota Tebing Tinggi', 2),
(57, 'Kabupaten Agam', 6),
(58, 'Kabupaten Dharmasraya', 6),
(59, 'Kabupaten Kepulauan Mentawai', 6),
(60, 'Kabupaten Lima Puluh Kota', 6),
(61, 'Kabupaten Padang Pariaman', 6),
(62, 'Kabupaten Pasaman', 6),
(63, 'Kabupaten Pasaman Barat', 6),
(64, 'Kabupaten Pesisir Selatan', 6),
(65, 'Kabupaten Sijunjung', 6),
(66, 'Kabupaten Solok', 6),
(67, 'Kabupaten Solok Selatan', 6),
(68, 'Kabupaten Tanah Datar', 6),
(69, 'Kota Bukittinggi', 6),
(70, 'Kota Padang', 6),
(71, 'Kota Padangpanjang', 6),
(72, 'Kota Pariaman', 6),
(73, 'Kota Payakumbuh', 6),
(74, 'Kota Sawahlunto', 6),
(75, 'Kota Solok', 6),
(76, 'Kabupaten Bengkalis', 5),
(77, 'Kabupaten Indragiri Hilir', 5),
(78, 'Kabupaten Indragiri Hulu', 5),
(79, 'Kabupaten Kampar', 5),
(80, 'Kabupaten Kuantan Singingi', 5),
(81, 'Kabupaten Pelalawan', 5),
(82, 'Kabupaten Rokan Hilir', 5),
(83, 'Kabupaten Rokan Hulu', 5),
(84, 'Kabupaten Siak', 5),
(85, 'Kabupaten Kepulauan Meranti', 5),
(86, 'Kota Dumai', 5),
(87, 'Kota Pekanbaru', 5),
(88, 'Kabupaten Bintan', 10),
(89, 'Kabupaten Karimun', 10),
(90, 'Kabupaten Kepulauan Anambas', 10),
(91, 'Kabupaten Lingga', 10),
(92, 'Kabupaten Natuna', 10),
(93, 'Kota Batam', 10),
(94, 'Kota Tanjung Pinang', 10),
(95, 'Kabupaten Batanghari', 4),
(96, 'Kabupaten Bungo', 4),
(97, 'Kabupaten Kerinci', 4),
(98, 'Kabupaten Merangin', 4),
(99, 'Kabupaten Muaro Jambi', 4),
(100, 'Kabupaten Sarolangun', 4),
(101, 'Kabupaten Tanjung Jabung Barat', 4),
(102, 'Kabupaten Tanjung Jabung Timur', 4),
(103, 'Kabupaten Tebo', 4),
(104, 'Kota Jambi', 4),
(105, 'Kota Sungai Penuh', 4),
(106, 'Kabupaten Bengkulu Selatan', 3),
(107, 'Kabupaten Bengkulu Tengah', 3),
(108, 'Kabupaten Bengkulu Utara', 3),
(109, 'Kabupaten Kaur', 3),
(110, 'Kabupaten Kepahiang', 3),
(111, 'Kabupaten Lebong', 3),
(112, 'Kabupaten Mukomuko', 3),
(113, 'Kabupaten Rejang Lebong', 3),
(114, 'Kabupaten Seluma', 3),
(115, 'Kota Bengkulu', 3),
(116, 'Kabupaten Banyuasin', 7),
(117, 'Kabupaten Empat Lawang', 7),
(118, 'Kabupaten Lahat', 7),
(119, 'Kabupaten Muara Enim', 7),
(120, 'Kabupaten Musi Banyuasin', 7),
(121, 'Kabupaten Musi Rawas', 7),
(122, 'Kabupaten Ogan Ilir', 7),
(123, 'Kabupaten Ogan Komering Ilir', 7),
(124, 'Kabupaten Ogan Komering Ulu', 7),
(125, 'Kabupaten Ogan Komering Ulu Selatan', 7),
(126, 'Kabupaten Ogan Komering Ulu Timur', 7),
(127, 'Kota Lubuklinggau', 7),
(128, 'Kota Pagar Alam', 7),
(129, 'Kota Palembang', 7),
(130, 'Kota Prabumulih', 7),
(131, 'Kabupaten Penukal Abab Lematang Ilir', 7),
(132, 'Kabupaten Bangka', 9),
(133, 'Kabupaten Bangka Barat', 9),
(134, 'Kabupaten Bangka Selatan', 9),
(135, 'Kabupaten Bangka Tengah', 9),
(136, 'Kabupaten Belitung', 9),
(137, 'Kabupaten Belitung Timur', 9),
(138, 'Kota Pangkal Pinang', 9),
(139, 'Kabupaten Lampung Tengah', 8),
(140, 'Kabupaten Lampung Utara', 8),
(141, 'Kabupaten Lampung Selatan', 8),
(142, 'Kabupaten Lampung Barat', 8),
(143, 'Kabupaten Tulang Bawang', 8),
(144, 'Kabupaten Tanggamus', 8),
(145, 'Kabupaten Way Kanan', 8),
(146, 'Kabupaten Lampung Timur', 8),
(147, 'Kabupaten Pesawaran', 8),
(148, 'Kabupaten Pringsewu', 8),
(149, 'Kabupaten Mesuji', 8),
(150, 'Kabupaten Tulang Bawang Barat', 8),
(151, 'Kabupaten Pesisir Barat', 8),
(152, 'Kota Bandar Lampung', 8),
(153, 'Kota Metro', 8),
(154, 'Kabupaten Tangerang', 11),
(155, 'Kabupaten Serang', 11),
(156, 'Kabupaten Lebak', 11),
(157, 'Kabupaten Pandeglang', 11),
(158, 'Kota Tangerang', 11),
(159, 'Kota Serang', 11),
(160, 'Kota Cilegon', 11),
(161, 'Kota Tangerang Selatan', 11),
(162, 'Kabupaten Bandung', 12),
(163, 'Kabupaten Bandung Barat', 12),
(164, 'Kabupaten Bekasi', 12),
(165, 'Kabupaten Bogor', 12),
(166, 'Kabupaten Ciamis', 12),
(167, 'Kabupaten Cianjur', 12),
(168, 'Kabupaten Cirebon', 12),
(169, 'Kabupaten Garut', 12),
(170, 'Kabupaten Indramayu', 12),
(171, 'Kabupaten Karawang', 12),
(172, 'Kabupaten Kuningan', 12),
(173, 'Kabupaten Majalengka', 12),
(174, 'Kabupaten Pangandaran', 12),
(175, 'Kabupaten Purwakarta', 12),
(176, 'Kabupaten Subang', 12),
(177, 'Kabupaten Sukabumi', 12),
(178, 'Kabupaten Sumedang', 12),
(179, 'Kabupaten Tasikmalaya', 12),
(180, 'Kota Bandung', 12),
(181, 'Kota Banjar', 12),
(182, 'Kota Bekasi', 12),
(183, 'Kota Bogor', 12),
(184, 'Kota Cimahi', 12),
(185, 'Kota Cirebon', 12),
(186, 'Kota Depok', 12),
(187, 'Kota Sukabumi', 12),
(188, 'Kota Tasikmalaya', 12),
(189, 'Kabupaten Administrasi Kepulauan Seribu', 13),
(190, 'Kota Administrasi Jakarta Barat', 13),
(191, 'Kota Administrasi Jakarta Pusat', 13),
(192, 'Kota Administrasi Jakarta Selatan', 13),
(193, 'Kota Administrasi Jakarta Timur', 13),
(194, 'Kota Administrasi Jakarta Utara', 13),
(195, 'Kabupaten Banjarnegara', 14),
(196, 'Kabupaten Banyumas', 14),
(197, 'Kabupaten Batang', 14),
(198, 'Kabupaten Blora', 14),
(199, 'Kabupaten Boyolali', 14),
(200, 'Kabupaten Brebes', 14),
(201, 'Kabupaten Cilacap', 14),
(202, 'Kabupaten Demak', 14),
(203, 'Kabupaten Grobogan', 14),
(204, 'Kota Jepara', 14),
(205, 'Kabupaten Karanganyar', 14),
(206, 'Kabupaten Kebumen', 14),
(207, 'Kabupaten Kendal', 14),
(208, 'Kabupaten Klaten', 14),
(209, 'Kabupaten Kudus', 14),
(210, 'Kabupaten Magelang', 14),
(211, 'Kabupaten Pati', 14),
(212, 'Kabupaten Pekalongan', 14),
(213, 'Kabupaten Pemalang', 14),
(214, 'Kabupaten Purbalingga', 14),
(215, 'Kabupaten Purworejo', 14),
(216, 'Kabupaten Rembang', 14),
(217, 'Kabupaten Semarang', 14),
(218, 'Kabupaten Sragen', 14),
(219, 'Kabupaten Sukoharjo', 14),
(220, 'Kabupaten Tegal', 14),
(221, 'Kabupaten Temanggung', 14),
(222, 'Kabupaten Wonogiri', 14),
(223, 'Kabupaten Wonosobo', 14),
(224, 'Kota Magelang', 14),
(225, 'Kota Pekalongan', 14),
(226, 'Kota Salatiga', 14),
(227, 'Kota Semarang', 14),
(228, 'Kota Surakarta', 14),
(229, 'Kota Tegal', 14),
(230, 'Kabupaten Bangkalan', 15),
(231, 'Kabupaten Banyuwangi', 15),
(232, 'Kabupaten Blitar', 15),
(233, 'Kabupaten Bojonegoro', 15),
(234, 'Kabupaten Bondowoso', 15),
(235, 'Kabupaten Gresik', 15),
(236, 'Kabupaten Jember', 15),
(237, 'Kabupaten Jombang', 15),
(238, 'Kabupaten Kediri', 15),
(239, 'Kabupaten Lamongan', 15),
(240, 'Kabupaten Lumajang', 15),
(241, 'Kabupaten Madiun', 15),
(242, 'Kabupaten Magetan', 15),
(243, 'Kabupaten Malang', 15),
(244, 'Kabupaten Mojokerto', 15),
(245, 'Kabupaten Nganjuk', 15),
(246, 'Kabupaten Ngawi', 15),
(247, 'Kabupaten Pacitan', 15),
(248, 'Kabupaten Pamekasan', 15),
(249, 'Kabupaten Pasuruan', 15),
(250, 'Kabupaten Ponorogo', 15),
(251, 'Kabupaten Probolinggo', 15),
(252, 'Kabupaten Sampang', 15),
(253, 'Kabupaten Sidoarjo', 15),
(254, 'Kabupaten Situbondo', 15),
(255, 'Kabupaten Sumenep', 15),
(256, 'Kabupaten Trenggalek', 15),
(257, 'Kabupaten Tuban', 15),
(258, 'Kabupaten Tulungagung', 15),
(259, 'Kota Batu[8]', 15),
(260, 'Kota Blitar', 15),
(261, 'Kota Kediri', 15),
(262, 'Kota Madiun', 15),
(263, 'Kota Malang', 15),
(264, 'Kota Mojokerto', 15),
(265, 'Kota Pasuruan', 15),
(266, 'Kota Probolinggo', 15),
(267, 'Kota Surabaya', 15),
(268, 'Kabupaten Bantul', 16),
(269, 'Kabupaten Gunung Kidul', 16),
(270, 'Kabupaten Kulon Progo', 16),
(271, 'Kabupaten Sleman', 16),
(272, 'Kota Yogyakarta', 16),
(273, 'Kabupaten Badung', 17),
(274, 'Kabupaten Bangli', 17),
(275, 'Kabupaten Buleleng', 17),
(276, 'Kabupaten Gianyar', 17),
(277, 'Kabupaten Jembrana', 17),
(278, 'Kabupaten Karangasem', 17),
(279, 'Kabupaten Klungkung', 17),
(280, 'Kabupaten Tabanan', 17),
(281, 'Kota Denpasar', 17),
(282, 'Kabupaten Bima', 18),
(283, 'Kabupaten Dompu', 18),
(284, 'Kabupaten Lombok Barat', 18),
(285, 'Kabupaten Lombok Tengah', 18),
(286, 'Kabupaten Lombok Timur', 18),
(287, 'Kabupaten Lombok Utara', 18),
(288, 'Kabupaten Sumbawa', 18),
(289, 'Kabupaten Sumbawa Barat', 18),
(290, 'Kota Bima', 18),
(291, 'Kota Mataram', 18),
(292, 'Kabupaten Alor', 19),
(293, 'Kabupaten Belu', 19),
(294, 'Kabupaten Ende', 19),
(295, 'Kabupaten Flores Timur', 19),
(296, 'Kabupaten Kupang', 19),
(297, 'Kabupaten Lembata', 19),
(298, 'Kabupaten Manggarai', 19),
(299, 'Kabupaten Manggarai Barat', 19),
(300, 'Kabupaten Manggarai Timur', 19),
(301, 'Kabupaten Ngada', 19),
(302, 'Kabupaten Nagekeo', 19),
(303, 'Kabupaten Rote Ndao', 19),
(304, 'Kabupaten Sabu Raijua', 19),
(305, 'Kabupaten Sikka', 19),
(306, 'Kabupaten Sumba Barat', 19),
(307, 'Kabupaten Sumba Barat Daya', 19),
(308, 'Kabupaten Sumba Tengah', 19),
(309, 'Kabupaten Sumba Timur', 19),
(310, 'Kabupaten Timor Tengah Selatan', 19),
(311, 'Kabupaten Timor Tengah Utara', 19),
(312, 'Kota Kupang', 19),
(313, 'Kabupaten Malaka', 19),
(314, 'Kabupaten Bengkayang', 20),
(315, 'Kabupaten Kapuas Hulu', 20),
(316, 'Kabupaten Kayong Utara', 20),
(317, 'Kabupaten Ketapang', 20),
(318, 'Kabupaten Kubu Raya', 20),
(319, 'Kabupaten Landak', 20),
(320, 'Kabupaten Melawi', 20),
(321, 'Kabupaten Pontianak', 20),
(322, 'Kabupaten Sambas', 20),
(323, 'Kabupaten Sanggau', 20),
(324, 'Kabupaten Sekadau', 20),
(325, 'Kabupaten Sintang', 20),
(326, 'Kota Pontianak', 20),
(327, 'Kota Singkawang', 20),
(328, 'Kabupaten Balangan', 21),
(329, 'Kabupaten Banjar', 21),
(330, 'Kabupaten Barito Kuala', 21),
(331, 'Kabupaten Hulu Sungai Selatan', 21),
(332, 'Kabupaten Hulu Sungai Tengah', 21),
(333, 'Kabupaten Hulu Sungai Utara', 21),
(334, 'Kabupaten Kotabaru', 21),
(335, 'Kabupaten Tabalong', 21),
(336, 'Kabupaten Tanah Bumbu', 21),
(337, 'Kabupaten Tanah Laut', 21),
(338, 'Kabupaten Tapin', 21),
(339, 'Kota Banjarbaru', 21),
(340, 'Kota Banjarmasin', 21),
(341, 'Kabupaten Barito Selatan', 22),
(342, 'Kabupaten Barito Timur', 22),
(343, 'Kabupaten Barito Utara', 22),
(344, 'Kabupaten Gunung Mas', 22),
(345, 'Kabupaten Kapuas', 22),
(346, 'Kabupaten Katingan', 22),
(347, 'Kabupaten Kotawaringin Barat', 22),
(348, 'Kabupaten Kotawaringin Timur', 22),
(349, 'Kabupaten Lamandau', 22),
(350, 'Kabupaten Murung Raya', 22),
(351, 'Kabupaten Pulang Pisau', 22),
(352, 'Kabupaten Sukamara', 22),
(353, 'Kabupaten Seruyan', 22),
(354, 'Kota Palangka Raya', 22),
(355, 'Kabupaten Berau', 23),
(356, 'Kabupaten Kutai Barat', 23),
(357, 'Kabupaten Kutai Kartanegara', 23),
(358, 'Kabupaten Kutai Timur', 23),
(359, 'Kabupaten Paser', 23),
(360, 'Kabupaten Penajam Paser Utara', 23),
(361, 'Balikpapan', 23),
(362, 'Kota Bontang', 23),
(363, 'Kota Samarinda', 23),
(364, 'Kabupaten Mahakam Ulu', 23),
(365, 'Kabupaten Bulungan', 33),
(366, 'Kabupaten Malinau', 33),
(367, 'Kabupaten Nunukan', 33),
(368, 'Kabupaten Tana Tidung', 33),
(369, 'Kota Tarakan', 33),
(370, 'Kabupaten Boalemo', 24),
(371, 'Kabupaten Bone Bolango', 24),
(372, 'Kabupaten Gorontalo', 24),
(373, 'Kabupaten Gorontalo Utara', 24),
(374, 'Kabupaten Pohuwato', 24),
(375, 'Kota Gorontalo', 24),
(376, 'Kabupaten Bantaeng', 25),
(377, 'Kabupaten Barru', 25),
(378, 'Kabupaten Bone', 25),
(379, 'Kabupaten Bulukumba', 25),
(380, 'Kabupaten Enrekang', 25),
(381, 'Kabupaten Gowa', 25),
(382, 'Kabupaten Jeneponto', 25),
(383, 'Kabupaten Kepulauan Selayar', 25),
(384, 'Kabupaten Luwu', 25),
(385, 'Kabupaten Luwu Timur', 25),
(386, 'Kabupaten Luwu Utara', 25),
(387, 'Kabupaten Maros', 25),
(388, 'Kabupaten Pangkajene dan Kepulauan', 25),
(389, 'Kabupaten Pinrang', 25),
(390, 'Kabupaten Sidenreng Rappang', 25),
(391, 'Kabupaten Sinjai', 25),
(392, 'Kabupaten Soppeng', 25),
(393, 'Kabupaten Takalar', 25),
(394, 'Kabupaten Tana Toraja', 25),
(395, 'Kabupaten Toraja Utara', 25),
(396, 'Kabupaten Wajo', 25),
(397, 'Kota Makassar', 25),
(398, 'Kota Palopo', 25),
(399, 'Kota Parepare', 25),
(400, 'Kabupaten Bombana', 26),
(401, 'Kabupaten Buton', 26),
(402, 'Kabupaten Buton Utara', 26),
(403, 'Kabupaten Kolaka', 26),
(404, 'Kabupaten Kolaka Timur', 26),
(405, 'Kabupaten Kolaka Utara', 26),
(406, 'Kabupaten Konawe', 26),
(407, 'Kabupaten Konawe Kepulauan', 26),
(408, 'Kabupaten Konawe Selatan', 26),
(409, 'Kabupaten Konawe Utara', 26),
(410, 'Kabupaten Muna', 26),
(411, 'Kabupaten Wakatobi', 26),
(412, 'Kota Bau-Bau', 26),
(413, 'Kota Kendari', 26),
(414, 'Kabupaten Banggai', 27),
(415, 'Kabupaten Banggai Kepulauan', 27),
(416, 'Kabupaten Buol', 27),
(417, 'Kabupaten Donggala', 27),
(418, 'Kabupaten Morowali', 27),
(419, 'Kabupaten Parigi Moutong', 27),
(420, 'Kabupaten Poso', 27),
(421, 'Kabupaten Tojo Una-Una', 27),
(422, 'Kabupaten Toli-Toli', 27),
(423, 'Kabupaten Sigi', 27),
(424, 'Kota Palu', 27),
(425, 'Kabupaten Banggai Laut', 27),
(426, 'Kabupaten Bolaang Mongondow', 28),
(427, 'Kabupaten Bolaang Mongondow Selatan', 28),
(428, 'Kabupaten Bolaang Mongondow Timur', 28),
(429, 'Kabupaten Bolaang Mongondow Utara', 28),
(430, 'Kabupaten Kepulauan Sangihe', 28),
(431, 'Kabupaten Kepulauan Siau Tagulandang Bia', 28),
(432, 'Kabupaten Kepulauan Talaud', 28),
(433, 'Kabupaten Minahasa', 28),
(434, 'Kabupaten Minahasa Selatan', 28),
(435, 'Kabupaten Minahasa Tenggara', 28),
(436, 'Kabupaten Minahasa Utara', 28),
(437, 'Kota Bitung', 28),
(438, 'Kota Kotamobagu', 28),
(439, 'Kota Manado', 28),
(440, 'Kota Tomohon', 28),
(441, 'Kabupaten Majene', 34),
(442, 'Kabupaten Mamasa', 34),
(443, 'Kabupaten Mamuju', 34),
(444, 'Kabupaten Mamuju Utara', 34),
(445, 'Kabupaten Polewali Mandar', 34),
(446, 'Kabupaten Mamuju Tengah', 34),
(447, 'Kabupaten Buru', 29),
(448, 'Kabupaten Buru Selatan', 29),
(449, 'Kabupaten Kepulauan Aru', 29),
(450, 'Kabupaten Maluku Barat Daya', 29),
(451, 'Kabupaten Maluku Tengah', 29),
(452, 'Kabupaten Maluku Tenggara', 29),
(453, 'Kabupaten Maluku Tenggara Barat', 29),
(454, 'Kabupaten Seram Bagian Barat', 29),
(455, 'Kabupaten Seram Bagian Timur', 29),
(456, 'Kota Ambon', 29),
(457, 'Kota Tual', 29),
(458, 'Kabupaten Halmahera Barat', 30),
(459, 'Kabupaten Halmahera Tengah', 30),
(460, 'Kabupaten Halmahera Utara', 30),
(461, 'Kabupaten Halmahera Selatan', 30),
(462, 'Kabupaten Kepulauan Sula', 30),
(463, 'Kabupaten Halmahera Timur', 30),
(464, 'Kabupaten Pulau Morotai', 30),
(465, 'Kota Ternate', 30),
(466, 'Kota Tidore Kepulauan', 30),
(467, 'Kabupaten Pulau Taliabu', 30),
(468, 'Kabupaten Asmat', 32),
(469, 'Kabupaten Biak Numfor', 32),
(470, 'Kabupaten Boven Digoel', 32),
(471, 'Kabupaten Deiyai', 32),
(472, 'Kabupaten Dogiyai', 32),
(473, 'Kabupaten Intan Jaya', 32),
(474, 'Kabupaten Jayapura', 32),
(475, 'Kabupaten Jayawijaya', 32),
(476, 'Kabupaten Keerom', 32),
(477, 'Kabupaten Kepulauan Yapen', 32),
(478, 'Kabupaten Lanny Jaya', 32),
(479, 'Kabupaten Mamberamo Raya', 32),
(480, 'Kabupaten Mamberamo Tengah', 32),
(481, 'Kabupaten Mappi', 32),
(482, 'Kabupaten Merauke', 32),
(483, 'Kabupaten Mimika', 32),
(484, 'Kabupaten Nabire', 32),
(485, 'Kabupaten Nduga', 32),
(486, 'Kabupaten Paniai', 32),
(487, 'Kabupaten Pegunungan Bintang', 32),
(488, 'Kabupaten Puncak', 32),
(489, 'Kabupaten Puncak Jaya', 32),
(490, 'Kabupaten Sarmi', 32),
(491, 'Kabupaten Supiori', 32),
(492, 'Kabupaten Tolikara', 32),
(493, 'Kabupaten Waropen', 32),
(494, 'Kabupaten Yahukimo', 32),
(495, 'Kabupaten Yalimo', 32),
(496, 'Kota Jayapura', 32),
(497, 'Kabupaten Fakfak', 31),
(498, 'Kabupaten Kaimana', 31),
(499, 'Kabupaten Manokwari', 31),
(500, 'Kabupaten Manokwari Selatan', 31),
(501, 'Kabupaten Maybrat', 31),
(502, 'Kabupaten Pegunungan Arfak', 31),
(503, 'Kabupaten Raja Ampat', 31),
(504, 'Kabupaten Sorong', 31),
(505, 'Kabupaten Sorong Selatan', 31),
(506, 'Kabupaten Tambrauw', 31),
(507, 'Kabupaten Teluk Bintuni', 31),
(508, 'Kabupaten Teluk Wondama', 31),
(509, 'Kota Sorong', 31);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `id` int(11) NOT NULL,
  `plat` varchar(255) NOT NULL,
  `merk` varchar(255) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `oli` timestamp NULL DEFAULT NULL,
  `kilometer` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '1: Ready, 2:Used, 3:Broken'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`id`, `plat`, `merk`, `last_update`, `oli`, `kilometer`, `status`) VALUES
(1, 'D 1956 VXY', 'Innova', '2018-12-19 01:17:25', NULL, NULL, 0),
(2, 'D 1740 PN', 'Toyota Fortuner', '2018-12-19 01:44:19', NULL, NULL, 0),
(3, 'D 1862 E', 'Toyota Vios', '2018-12-19 01:44:19', NULL, NULL, 0),
(4, 'D 1379 F', 'Daihatsu Grandmax', '2018-12-19 01:44:50', NULL, NULL, 2),
(5, 'D 307 AK', 'Volkswagen', '2018-12-19 01:44:50', NULL, NULL, 2),
(6, 'D 8480 C', 'Daihatsu Grandmax', '2018-12-19 01:45:38', NULL, NULL, 0),
(7, 'D 1473 C', 'Toyota Kijang LGX', '2018-12-19 01:45:38', NULL, NULL, 0),
(8, 'D 1211 B', 'Mitsubishi Kuda', '2018-12-19 02:58:02', NULL, NULL, 2),
(9, 'D 1237 E', 'Toyota Kijang Innova', '2018-12-19 02:58:02', NULL, NULL, 0),
(10, 'D 1756 D', 'Toyota Kijang Innova', '2018-12-19 02:58:40', NULL, NULL, 0),
(11, 'D 1130 E', 'Toyota Kijang Innova', '2018-12-19 02:58:40', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `perjalanan`
--

CREATE TABLE `perjalanan` (
  `id` int(11) NOT NULL,
  `driverId` int(11) NOT NULL,
  `mobilId` int(11) NOT NULL,
  `kotaId` int(11) NOT NULL,
  `maksud` text NOT NULL,
  `tanggal` timestamp NULL DEFAULT NULL,
  `lama` int(11) NOT NULL,
  `keterangan` text,
  `kilometer` int(11) DEFAULT NULL,
  `jarak` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `perjalanan`
--

INSERT INTO `perjalanan` (`id`, `driverId`, `mobilId`, `kotaId`, `maksud`, `tanggal`, `lama`, `keterangan`, `kilometer`, `jarak`) VALUES
(1, 1, 2, 249, 'Aasdadasd', '2019-01-15 17:00:00', 4, NULL, 320040, NULL),
(2, 2, 9, 192, 'Mengantar ke Kemenperin', '2019-01-09 17:00:00', 6, NULL, 20, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `propinsi`
--

CREATE TABLE `propinsi` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `propinsi`
--

INSERT INTO `propinsi` (`id`, `nama`) VALUES
(1, 'Aceh'),
(2, 'Sumatera Utara'),
(3, 'Bengkulu'),
(4, 'Jambi'),
(5, 'Riau'),
(6, 'Sumatera Barat'),
(7, 'Sumatera Selatan'),
(8, 'Lampung'),
(9, 'Bangka Belitung'),
(10, 'Kepulauan Riau'),
(11, 'Banten'),
(12, 'Jawa Barat'),
(13, 'Jakarta'),
(14, 'Jawa Tengah'),
(15, 'Jawa Timur'),
(16, 'Yogyakarta'),
(17, 'Bali'),
(18, 'Nusa Tenggara Barat'),
(19, 'Nusa Tenggara Timur'),
(20, 'Kalimantan Barat'),
(21, 'Kalimantan Selatan'),
(22, 'Kalimantan Tengah'),
(23, 'Kalimantan Timur'),
(24, 'Gorontalo'),
(25, 'Sulawesi Selatan'),
(26, 'Sulawesi Tenggara'),
(27, 'Sulawesi Tengah'),
(28, 'Sulawesi Utara'),
(29, 'Maluku'),
(30, 'Maluku Utara'),
(31, 'Papua Barat'),
(32, 'Papua'),
(33, 'Kalimantan Utara'),
(34, 'Sulawesi Barat');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_propinsi` (`propinsiId`);

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `perjalanan`
--
ALTER TABLE `perjalanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `propinsi`
--
ALTER TABLE `propinsi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `driver`
--
ALTER TABLE `driver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kota`
--
ALTER TABLE `kota`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=510;

--
-- AUTO_INCREMENT untuk tabel `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `perjalanan`
--
ALTER TABLE `perjalanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `propinsi`
--
ALTER TABLE `propinsi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
