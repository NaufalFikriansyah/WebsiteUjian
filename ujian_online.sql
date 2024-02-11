-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jan 2023 pada 05.03
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujian_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `acaksoal`
--

CREATE TABLE `acaksoal` (
  `no` int(11) NOT NULL,
  `ujian` int(11) NOT NULL,
  `soal` int(11) NOT NULL,
  `siswa` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `acaksoal`
--

INSERT INTO `acaksoal` (`no`, `ujian`, `soal`, `siswa`) VALUES
(72, 3, 11, '288064'),
(73, 3, 22, '288064'),
(74, 3, 33, '288064'),
(75, 3, 9, '288064'),
(76, 3, 20, '288064'),
(77, 3, 31, '288064'),
(78, 3, 7, '288064'),
(79, 3, 18, '288064'),
(80, 3, 29, '288064'),
(81, 3, 5, '288064'),
(82, 3, 16, '288064'),
(83, 3, 27, '288064'),
(85, 3, 14, '288064'),
(86, 3, 25, '288064'),
(88, 3, 12, '288064'),
(89, 3, 23, '288064'),
(90, 3, 34, '288064'),
(91, 3, 10, '288064'),
(92, 3, 21, '288064'),
(93, 3, 32, '288064'),
(94, 3, 8, '288064'),
(95, 3, 19, '288064'),
(96, 3, 30, '288064'),
(97, 3, 6, '288064'),
(98, 3, 17, '288064'),
(99, 3, 28, '288064'),
(100, 3, 4, '288064'),
(101, 3, 15, '288064'),
(102, 3, 26, '288064'),
(104, 3, 13, '288064'),
(105, 3, 24, '288064');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `nama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `password`, `nama`) VALUES
('admin', '827ccb0eea8a706c4c34a16891f84e7b', 'Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawaban`
--

CREATE TABLE `jawaban` (
  `no` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `soal` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jawaban`
--

INSERT INTO `jawaban` (`no`, `keterangan`, `soal`, `status`) VALUES
(1, 'a.keyboard', 4, 0),
(2, 'b. joystick', 4, 0),
(3, 'c. mouse', 4, 0),
(4, 'd. Touchpad', 4, 0),
(5, 'e. monitor', 4, 1),
(6, 'a.printer', 5, 0),
(7, 'b.plotter', 5, 0),
(8, 'c. Light pen', 5, 1),
(9, 'd.monitor', 5, 0),
(10, 'e.proyektor', 5, 0),
(11, 'a.flashdisk', 6, 0),
(12, 'b.harddisk', 6, 0),
(13, 'c.mouse', 6, 1),
(14, 'd.disket', 6, 0),
(15, 'e.Dvd', 6, 0),
(16, 'a.keybord', 7, 1),
(17, 'b.motherbord', 7, 0),
(18, 'c.casing', 7, 0),
(19, 'd.periperal', 7, 0),
(20, 'e.faterbord', 7, 0),
(21, 'a.keyboard', 8, 0),
(22, 'b.motherbord', 8, 1),
(23, 'c.casing', 8, 0),
(24, 'd.periperal', 8, 0),
(25, 'e.fatherbord', 8, 0),
(26, 'a.storage device', 9, 1),
(27, 'b.input device', 9, 0),
(28, 'c.output device', 9, 0),
(29, 'd.processing device', 9, 0),
(30, 'e.periperal device', 9, 0),
(31, 'a. obeng dan sarung tangan serta komponen untuk merakit komputer', 10, 1),
(32, 'b.tang dan baut serta komponen komputer', 10, 0),
(33, 'c. modem dan obeng', 10, 0),
(34, 'd.router dan swicth', 10, 0),
(35, 'e. palu dan paku', 10, 0),
(36, 'a. cisco packet traser', 11, 0),
(37, 'b. GNS3', 11, 0),
(38, 'c. ubuntu', 11, 0),
(39, 'd.photoshop', 11, 1),
(40, 'e. virtualBox', 11, 0),
(46, 'a.LAN', 12, 0),
(47, 'b. MAN', 12, 1),
(48, 'c. WAN', 12, 0),
(49, 'd. HUB', 12, 0),
(50, 'e.Fiber optic', 12, 0),
(51, 'a. LAN', 13, 0),
(52, 'b.MAN', 13, 0),
(53, 'c. WAN', 13, 1),
(54, 'd. HUB', 13, 0),
(55, 'e. Fiber optic', 13, 0),
(56, 'a. Aplikasi editor grafik vektor', 14, 1),
(57, 'b. aplikasi browser internet', 14, 0),
(58, 'c.aplikasi membuat animasi flash', 14, 0),
(59, 'd. Aplikasi berhitung', 14, 0),
(60, 'e. Aplikasi membuat program', 14, 0),
(61, 'a. CTRL+O', 15, 0),
(62, 'b. CTRL+N', 15, 1),
(63, 'c. CTRL+X', 15, 0),
(64, 'd. CTRL+Z', 15, 0),
(65, 'e. CTRL+R', 15, 0),
(66, 'a. File?Import', 16, 0),
(67, 'b. File?save', 16, 0),
(68, 'c. File?export', 16, 1),
(69, 'd. File?print', 16, 0),
(70, 'e. File?print', 16, 0),
(71, 'a. membuat garis lurus', 17, 0),
(72, 'b. membuat persegi atau persegi panjang', 17, 0),
(73, 'c. membuat lingkaran atau elips', 17, 0),
(74, 'd. membuat gambar spiral', 17, 1),
(75, 'e. membuat gambar 3D', 17, 0),
(76, 'a. membuat garis lurus', 18, 0),
(77, 'b.membuat persegi panjang atau persegi', 18, 0),
(78, 'c. membuat lingkaran atau elips', 18, 1),
(79, 'd. membuat gambar spiral', 18, 0),
(80, 'e. membuat gambar 3D', 18, 0),
(81, 'a. CTRL+E', 19, 1),
(82, 'b. CTRL+A', 19, 0),
(83, 'c. CTRL+B', 19, 0),
(84, 'd. CTRL+C', 19, 0),
(85, 'e. F5', 19, 0),
(86, 'a.Artistic media tool', 20, 1),
(87, 'b.Shape tool', 20, 0),
(88, 'c.Pen tool', 20, 0),
(89, 'd.Zoom tool', 20, 0),
(90, 'e. paint', 20, 0),
(91, 'a.Membuat garis kurva', 21, 0),
(92, 'b.Membuat tabel', 21, 0),
(93, 'c.Membentuk garis dimensi vertikal,horizontal,diagonal,dan sebagainya', 21, 1),
(94, 'd. membuat lukisan', 21, 0),
(95, 'e. semua benar', 21, 0),
(96, 'a.	Pick tool', 22, 0),
(97, 'b.	Shape tool', 22, 1),
(98, 'c.	Envelope tool', 22, 0),
(99, 'd.	Berzier tool', 22, 0),
(100, 'e.	Eraser tool', 22, 0),
(101, 'a.	Save grafik corelDraw', 23, 0),
(102, 'b.	Membuka lembar baru pada corelDraw', 23, 0),
(103, 'c.	Mengulangi langkah sebelumnya', 23, 1),
(104, 'd.	Membuat text', 23, 0),
(105, 'e. membuat gambar 3D', 23, 0),
(106, 'a.	Basic input output Stop', 24, 0),
(107, 'b.	Basic Input Output System', 24, 1),
(108, 'b.	Basic Input Output System', 24, 0),
(109, 'd.	Basic include Output Stop', 24, 0),
(110, 'e.	Basic Include Sytem', 24, 0),
(111, 'a.	Motherboard', 25, 0),
(112, 'b.	BIOS', 25, 1),
(113, 'c.	Peripheral', 25, 0),
(114, 'd.	Operating System', 25, 0),
(115, 'e.	Command promt', 25, 0),
(116, 'a. file', 26, 0),
(117, 'b. folder', 26, 1),
(118, 'c. sub folder', 26, 0),
(119, 'd. document', 26, 0),
(120, 'e. office', 26, 0),
(121, 'a. file', 27, 0),
(122, 'b. folder', 27, 0),
(123, 'c. sub folder', 27, 0),
(124, 'd.document', 27, 1),
(125, 'e. office', 27, 0),
(126, 'a.	Motherboard', 28, 0),
(127, 'b. BIOS', 28, 0),
(128, 'c.	Peripheral', 28, 0),
(129, 'd.	Operating System', 28, 1),
(130, 'e.	Command promt', 28, 0),
(131, 'a. GUI', 29, 1),
(132, 'b. CLI', 29, 0),
(133, 'c. CPU', 29, 0),
(134, 'd. PCI', 29, 0),
(135, 'e. linux', 29, 0),
(136, 'a. GUI', 30, 0),
(137, 'b. CLI', 30, 0),
(138, 'c. CPU', 30, 0),
(139, 'd.PCI', 30, 0),
(140, 'e. linux', 30, 1),
(141, 'a. Graphical user interface', 31, 1),
(142, 'b. Graf user interface', 31, 0),
(143, 'c. Gate user interface', 31, 0),
(144, 'd.Guardian user interface', 31, 0),
(145, 'e.Go user interface', 31, 0),
(146, 'a.Com life  interface', 32, 0),
(147, 'b.Command line interface', 32, 1),
(148, 'c.Computer life interface', 32, 0),
(149, 'd.Computer layout interface', 32, 0),
(150, 'e.Command layout interface', 32, 0),
(151, 'a.monotasking', 33, 1),
(152, 'b.Multi tasking', 33, 0),
(153, 'c.Multi fungsi', 33, 0),
(154, 'd.0Booting', 33, 0),
(155, 'e.Refresh', 33, 0),
(156, 'a. Membuat program', 34, 0),
(157, 'b. membuat algoritma', 34, 0),
(158, 'c.	Membeli komputer', 34, 1),
(159, 'd.proses', 34, 0),
(160, 'e.	Mempelajari program', 34, 0),
(161, 'a. proses', 35, 0),
(162, 'b.program', 35, 0),
(163, 'c. algoritma', 35, 1),
(169, 'd. step', 35, 0),
(170, 'e. diagram', 35, 0),
(171, 'a. Bahassa Inggris', 36, 0),
(172, 'b.Bahasa Puitis', 36, 0),
(173, 'c.Bahasa pemograman', 36, 1),
(174, 'd.Sembarang bahasa asal terstruktur', 36, 0),
(175, 'e.Bahasa Mesin', 36, 0),
(176, 'a. Sebelum pembuatan program', 37, 1),
(177, 'b. Pada saat program dibuat', 37, 0),
(178, 'c. Sesudah pembuatan program', 37, 0),
(179, 'd. Pada saat verifikasi program', 37, 0),
(180, 'e. Pada saat di jalankan', 37, 0),
(181, 'a. Masalah-Pseudocode-Flowchart-Program-Eksekusi-Hasil', 38, 0),
(182, 'b. Masalah-Algoritma-Flowchart-Program-Eksekusi-Hasil', 38, 1),
(183, 'c.Masalah-Model-Algoritma-Eksekusi-Hasil', 38, 0),
(184, 'd. Masalah-Model-Algoritma-Program-Eksekusi-hasil', 38, 0),
(185, 'e. Algoritma-Program-Model-Eksekusi-Hasil', 38, 0),
(196, 'a. menjadi sembarang nilai', 41, 0),
(197, 'b. menjadi hampa', 41, 1),
(198, 'c. Q tetap', 41, 0),
(199, 'd. menjadi 10', 41, 0),
(200, 'e. P tetap', 41, 0),
(201, 'a. a=0 , b=5', 42, 0),
(202, 'b. a=10 , b=5', 42, 1),
(203, 'c. a=10 , b=0', 42, 0),
(204, 'd. a=b', 42, 0),
(205, 'e. a=10 , b=10', 42, 0),
(206, 'a. Byte', 43, 0),
(207, 'b. integer', 43, 0),
(208, 'c. char', 43, 0),
(209, 'd. string', 43, 0),
(210, 'e. boolean', 43, 1),
(211, 'a. Hambatan listrik', 44, 0),
(212, 'b. Resistor', 44, 0),
(213, 'c. kapasitor', 44, 1),
(214, 'd.induktor', 44, 0),
(215, 'e. gerbang logika', 44, 0),
(216, 'a. Heksadesimal', 45, 0),
(217, 'b.oktal', 45, 0),
(218, 'c. desimal', 45, 0),
(219, 'd. biner', 45, 1),
(220, 'e. bil ganjil', 45, 0),
(221, 'a. Heksadesimal', 46, 0),
(222, 'b.oktal', 46, 0),
(223, 'c. desimal', 46, 0),
(224, 'd.biner', 46, 1),
(225, 'e. bil ganjil', 46, 0),
(226, 'a. Heksadesimal', 47, 1),
(227, 'b.oktal', 47, 0),
(228, 'c. desimal', 47, 0),
(229, 'd. biner', 47, 0),
(230, 'e. bilangan biner', 47, 0),
(236, 'a. N10', 50, 1),
(237, 'b.N2', 50, 0),
(238, 'c. N16', 50, 0),
(239, 'd. N8', 50, 0),
(240, 'e. N0', 50, 0),
(241, 'a.N10', 51, 0),
(242, 'b.N2', 51, 1),
(243, 'c. N16', 51, 0),
(244, 'd. N8', 51, 0),
(245, 'e. N0', 51, 0),
(246, 'a. Heksadesimal', 52, 1),
(247, 'b.oktal', 52, 0),
(248, 'c. desimal', 52, 0),
(249, 'd. biner', 52, 0),
(250, 'e. bilangan ganjil', 52, 0),
(251, 'a. Heksadesimal', 53, 0),
(252, 'b. oktal', 53, 0),
(253, 'c. desimal', 53, 0),
(254, 'd. biner', 53, 0),
(255, 'e. bilangan ganjil', 53, 1),
(256, 'a.	monotasking    ', 54, 0),
(257, 'b.	Multi tasking', 54, 1),
(258, 'c.	Multi fungsi', 54, 0),
(259, 'd.	Booting', 54, 0),
(260, 'e.	Refresh', 54, 0),
(261, 'a.	Dir    ', 55, 0),
(262, 'b.	Rd', 55, 1),
(263, 'c.	Md', 55, 0),
(264, 'd.	Cd', 55, 0),
(265, 'e.	Cd..', 55, 0),
(266, 'a.	Dir    ', 56, 0),
(267, 'b.	Rd', 56, 0),
(268, 'c.	Md', 56, 0),
(269, 'd.	Cd', 56, 1),
(270, 'e.	Cd..', 56, 0),
(271, 'a.	Dir   ', 57, 0),
(272, 'b.	Rd', 57, 0),
(273, 'c.	Md', 57, 1),
(274, 'd.	Cd ', 57, 0),
(275, 'e.	Cd', 57, 0),
(276, 'a.	Dir    ', 58, 0),
(277, 'b.	Rd', 58, 0),
(278, 'c.	Md', 58, 0),
(279, 'd.	Cd', 58, 1),
(280, 'e.	Cd..', 58, 0),
(281, 'a.	Dir    ', 59, 0),
(282, 'b.	Rd', 59, 0),
(283, 'c.	Md', 59, 1),
(284, 'd.	Cd', 59, 0),
(285, 'e.	Cd..', 59, 0),
(286, 'a.	Keybord   ', 60, 0),
(287, 'b.	Joytick', 60, 0),
(288, 'c.	Mouse', 60, 0),
(289, 'd.	Touchpad', 60, 0),
(290, ' e.	Monitor', 60, 1),
(291, 'a.	Printer    ', 61, 0),
(292, 'b.	Plotter', 61, 1),
(293, 'c.	Light pen', 61, 0),
(294, 'd.	Monitor', 61, 0),
(295, 'e.	Proyektor', 61, 0),
(296, 'a.	Flasdisk    ', 62, 0),
(297, 'b.	Harddisk', 62, 0),
(298, 'c.	Mouse', 62, 1),
(299, 'd.	Disket', 62, 0),
(300, 'e.	Dvd', 62, 0),
(301, 'a.	Keybord   ', 63, 1),
(302, 'b.	Motherboard', 63, 0),
(303, 'c.	Casing ', 63, 0),
(304, 'd.	Periperal', 63, 0),
(305, 'e.	Faterboard', 63, 0),
(306, 'a.	Keybord   ', 64, 0),
(307, 'b.	Motherboard', 64, 1),
(308, 'c.	Casing', 64, 0),
(309, ' d.	Periperal', 64, 0),
(310, 'e.	Faterboard', 64, 0),
(311, 'a.	Storage device   ', 65, 1),
(312, 'b.	Input device', 65, 0),
(313, 'c.	Output device', 65, 0),
(314, 'd.	Processing device ', 65, 0),
(315, 'e.	Periperal device', 65, 0),
(316, 'a. Obeng dan sarung tangan serta kompunen untuk merakit komputer ', 66, 1),
(317, 'b.	Tang dan baut serta komponen komputer', 66, 0),
(318, 'c.	Modem dan obeng', 66, 0),
(319, 'd.	Router dan swicth', 66, 0),
(320, 'e.	Palu dan paku', 66, 0),
(321, 'a.	Cisco packet traser    ', 67, 0),
(322, 'b.	GNS3', 67, 0),
(323, 'c.	Ubuntu', 67, 0),
(324, 'd.	Photoshop', 67, 1),
(325, 'e.	virtualBox', 67, 0),
(326, 'a.	LAN    ', 68, 1),
(327, 'b.	MAN', 68, 0),
(328, 'c.	WAN ', 68, 0),
(329, ' d.	HUB', 68, 0),
(330, 'e.	Fiber optic', 68, 0),
(331, 'a.	LAN      ', 69, 1),
(332, 'b.	MAN', 69, 0),
(333, 'c.	WAN', 69, 0),
(334, 'd.	HUB', 69, 0),
(335, 'e.	Fiber optic', 69, 0),
(336, 'a.	LAN      ', 70, 1),
(337, 'b.	MAN', 70, 0),
(338, 'c.	WAN', 70, 0),
(339, 'd.	HUB', 70, 0),
(340, 'e.	Fiber optic', 70, 0),
(351, 'a.	Fat 16    ', 73, 1),
(352, 'b.	Fat 32', 73, 0),
(353, 'c.	Ntfs', 73, 0),
(354, 'd.	Ext2', 73, 0),
(355, 'e.	Ext3', 73, 0),
(356, 'a.	F6 ', 74, 0),
(357, 'b.	F7   ', 74, 0),
(358, 'c.	F8', 74, 0),
(359, 'd.	F9', 74, 0),
(360, 'e.	F10', 74, 1),
(361, 'a.	Menampilkan output', 75, 1),
(362, 'b.	Menghapus perintah', 75, 0),
(363, 'c.	Mengatur warna background DOS prompt  ', 75, 0),
(364, 'd.	Menampilkan versi pada sistem DOS', 75, 0),
(365, 'e.	Menghapus riwayat dari layar dari baris-baris perintah yang di berikan sebelumnya', 75, 0),
(366, 'a.	Menampilkan output ', 76, 0),
(367, 'b.	Menghapus perintah ', 76, 0),
(368, 'c.	Mengatur warna background DOS prompt', 76, 1),
(369, 'd.	Menampilkan versi pada sistem DOS', 76, 0),
(370, 'e.	Menghapus riwayat dari layar dari baris-baris perintah yang di berikan sebelumnya', 76, 0),
(371, 'a.	Menampilkan output   ', 77, 0),
(372, 'b.	Menghapus perintah', 77, 0),
(373, 'c.	Mengatur warna background DOS prompt  ', 77, 0),
(374, 'd.	Menampilkan versi pada sistem DOS', 77, 1),
(375, 'e.	Menghapus riwayat dari layar dari baris-baris perintah yang di berikan sebelumnya', 77, 0),
(376, 'a.	Menampilkan output  ', 78, 0),
(377, 'b.	Menghapus perintah', 78, 0),
(378, 'c.	Mengatur warna background DOS prompt   ', 78, 1),
(379, 'd.	Menampilkan versi pada sistem DOS', 78, 0),
(380, 'e.	Menghapus riwayat dari layar dari baris-baris perintah yang di berikan sebelumnya', 78, 0),
(391, 'a.	CTRL + P  x  ', 81, 0),
(392, 'b.	CTRL + X', 81, 0),
(393, 'b.	CTRL + X', 81, 0),
(394, 'd.	CTRL + N', 81, 1),
(395, 'e.	CTRL + R', 81, 0),
(396, 'a.	Ilustration  ', 82, 1),
(397, 'b.	Ilustrate', 82, 0),
(398, 'c.	Ilustratse', 82, 0),
(399, 'd.	Ilustrat ', 82, 0),
(400, 'e.	Illustrate', 82, 0),
(401, 'a.	Edit ', 83, 0),
(402, ' b.	Setup   ', 83, 0),
(403, 'c.	Page setup', 83, 0),
(404, 'd.	View', 83, 0),
(405, ' e.	Layout ', 83, 1),
(406, 'a.	PDF    ', 84, 1),
(407, 'b.	AI', 84, 0),
(408, 'c.	PSD', 84, 0),
(409, 'd.	TIFF', 84, 0),
(410, 'e.	DOC', 84, 0),
(411, 'a.	Membuat Segitiga   ', 85, 1),
(412, 'b.	Membuat Lingkaran', 85, 0),
(413, 'c.	Mewarnai Grafis ', 85, 0),
(414, 'd.	Membuat Tabel', 85, 0),
(415, 'e.	Membuat kotak', 85, 0),
(416, 'a.	Cut   ', 86, 0),
(417, 'b.	Pick Tool', 86, 0),
(418, 'c.	Shape Tool ', 86, 1),
(419, 'd.	Berzier Tool', 86, 0),
(420, 'e.	Envolope Tool', 86, 0),
(421, 'a.	Irama   ', 87, 1),
(422, 'b.	Ritme', 87, 0),
(423, 'c.	Keseimbangan', 87, 0),
(424, 'd.	Tekanan ', 87, 0),
(425, 'e.	Kesatuan', 87, 0),
(426, 'a.	Membuat garis artistic ', 88, 0),
(427, 'b.	Membuat kurva ', 88, 0),
(428, 'c.	Membuat tabel ', 88, 0),
(429, 'd.	Membentuk garis dimensi vertikal, horizontal, diagonal dan sebagainya ', 88, 1),
(430, 'e.	Membuat shape', 88, 0),
(431, 'a.	Fill     ', 89, 0),
(432, 'b.	Patteren', 89, 0),
(433, 'c.	Outline', 89, 1),
(434, 'd.	Freehand', 89, 0),
(435, 'e.	Fountain fill', 89, 0),
(436, 'a.	File => Save    ', 90, 0),
(437, 'b.	File => Save As', 90, 1),
(438, 'c.	File => Export', 90, 0),
(439, 'd.	File => Import', 90, 0),
(440, 'e.	File => Open', 90, 0),
(446, 'a.	Merah, Kuning, Biru  ', 92, 1),
(447, 'b.	Ungu, Oranye, Merah Jambu  ', 92, 0),
(448, 'c.	Merah, Hijau, Ungu', 92, 0),
(449, 'd.	Biru, Kuning, Coklat  ', 92, 0),
(450, 'e.	Hitam, Hijau, Kuning', 92, 0),
(451, 'a.	Garis kontinyu  ', 93, 0),
(452, 'b.	Garis horozontal ', 93, 0),
(453, 'c.	Garis putus-titik', 93, 0),
(454, 'd.	Garis kaligrafi ', 93, 0),
(455, 'e.	Garis zig-zag', 93, 1),
(456, 'a.	Fill   ', 94, 0),
(457, 'b.	Patteren', 94, 0),
(458, ' c.	Outline', 94, 1),
(459, 'd.	Freehand ', 94, 0),
(460, 'e.	Fountain fill', 94, 0),
(461, 'a.	Balance (keseimbangan)   ', 95, 0),
(462, 'b.	Sequence atau Rhythm (Urut/Irama) ', 95, 1),
(463, 'c.	Unity (Kesatuan)', 95, 0),
(464, 'd.	Alignment (Perataan)', 95, 0),
(465, 'e.	Emphasis (Penekanan)', 95, 0),
(466, 'a.	JPEG   ', 96, 0),
(467, 'b.	MP3', 96, 0),
(468, 'c.	PNG ', 96, 0),
(469, 'd.	GIF', 96, 0),
(470, 'e.	BMP', 96, 1),
(471, 'a.	Vertical align   ', 97, 0),
(472, 'b.	Model terpusat', 97, 0),
(473, 'c.	Horizontal align', 97, 0),
(474, 'd.	Model diagonal ', 97, 1),
(475, 'e.	Model scatter', 97, 0),
(481, 'a.	Font   ', 99, 1),
(482, 'b.	Size', 99, 0),
(483, 'c.	Zoom ', 99, 0),
(484, 'd.	Copy', 99, 0),
(485, 'e.	Underline', 99, 0),
(486, 'a.	Kamera   ', 100, 0),
(487, 'b.	Scanner', 100, 1),
(488, 'c.	Ringlight', 100, 0),
(489, 'd.	Printer ', 100, 0),
(490, 'e.	Smartphone', 100, 0),
(491, 'a.	Ungu dan merah   ', 101, 0),
(492, 'b.	Merah dan putih', 101, 0),
(493, ' c.	Kuning dan hijau', 101, 0),
(494, 'd.	Merah dan oranye', 101, 0),
(495, 'e.	Merah dan biru', 101, 1),
(496, 'a.	Metal Scanner  ', 102, 1),
(497, 'b.	Drum Scanner', 102, 0),
(498, 'c.	Hand Sacnner', 102, 0),
(499, ' d.	Portable Scanner ', 102, 0),
(500, 'e.	Roller Scanner', 102, 0),
(501, 'a.	Kartun', 103, 1),
(502, 'b.	Karikatur   ', 103, 0),
(503, 'c.	Ilustrasi Naturalis', 103, 0),
(504, 'd.	Komik', 103, 0),
(505, 'e.	Vektor', 103, 0),
(506, 'a.	CDR ', 104, 0),
(507, 'b.	EVS  ', 104, 1),
(508, 'c.	EPS ', 104, 0),
(509, 'd.	AI', 104, 0),
(510, 'e.	SVG', 104, 0),
(511, 'a.	Algoritma  ', 105, 1),
(512, ' b.	Program', 105, 0),
(513, 'c.	Urutan ', 105, 0),
(514, 'd.	Logika', 105, 0),
(515, 'e.	Diagram alir', 105, 0),
(521, 'a.	Logika ', 107, 0),
(522, 'b.	Peta minda   ', 107, 0),
(523, 'c.	Algoritma', 107, 0),
(524, 'd.	Flowchart', 107, 0),
(525, 'e.	Pseudocode', 107, 1),
(526, 'a.	Microsoft Excel  ', 108, 0),
(527, 'b.	Microsoft Power Point ', 108, 0),
(528, 'c.	Microsoft Office ', 108, 0),
(529, 'd.	Microsoft OneNote', 108, 0),
(530, 'e.	Microsoft Word', 108, 1),
(531, 'a.	Membuat dokumen baru  ', 109, 1),
(532, 'b.	Membuka jendela dokumen ', 109, 0),
(533, 'c.	Mencetak dokumen', 109, 0),
(534, 'd.	Menutup jendela dokumen ', 109, 0),
(535, 'e.	Menyimpan dokumen', 109, 0),
(536, 'a.	Microsoft Powerpoint ', 110, 0),
(537, 'b.	Microsoft Word', 110, 0),
(538, 'c.	Microsoft Excel ', 110, 1),
(539, 'd.	Microsoft Onenote ', 110, 0),
(540, ' e.	Microsoft Edge', 110, 0),
(541, 'a.	Italic  ', 111, 0),
(542, 'b.	Font Color', 111, 0),
(543, 'c.	Bold ', 111, 1),
(544, 'd.	Underline ', 111, 0),
(545, 'e.	Font Size', 111, 0),
(546, 'a.	Cell  ', 112, 0),
(547, 'b.	Cell name', 112, 0),
(548, 'c.	Row ', 112, 1),
(549, 'd.	Coloumn', 112, 0),
(550, ' e.	Formula bar', 112, 0),
(551, 'a.	Pembagian  ', 113, 1),
(552, 'b.	Rata-rata ', 113, 0),
(553, 'c.	Mencari nilai minimal', 113, 0),
(554, 'd.	Penambahan ', 113, 0),
(555, ' e.	Pengurangan', 113, 0),
(556, 'a.	=    ', 114, 1),
(557, 'b.	*', 114, 0),
(558, 'c.	$', 114, 0),
(559, 'd.	+', 114, 0),
(560, 'e.	@', 114, 0),
(561, 'a.	Rata-rata   ', 115, 0),
(562, 'b.	Mencari nilai minimal ', 115, 0),
(563, 'c.	Pembagian', 115, 0),
(564, 'd.	Penjumlahan', 115, 1),
(565, 'e.	Pengurangan', 115, 0),
(566, 'a.	Michele Hotman    ', 116, 1),
(567, 'b.	Paquie', 116, 0),
(568, 'c.	Michel Torsman', 116, 0),
(569, 'd.	Tony Buzan', 116, 0),
(570, 'e.	Cristiano Ronaldo', 116, 0),
(571, 'a.	File new Insert ', 117, 1),
(572, 'b.	File open ', 117, 0),
(573, 'c.	Insert diagram', 117, 0),
(574, ' d.	Insert new slide .	', 117, 0),
(575, 'e. slide number', 117, 0),
(576, 'a.	F1 ', 118, 0),
(577, 'b.	F2 ', 118, 1),
(578, 'c.	F3', 118, 0),
(579, ' d.	F4', 118, 0),
(580, ' e.	F5', 118, 0),
(581, 'a.	Animation ', 119, 1),
(582, 'b.	Design  ', 119, 0),
(583, 'c.	Insert', 119, 0),
(584, ' d.	Transitions', 119, 0),
(585, 'e.	Home', 119, 0),
(586, 'a.	Close    ', 120, 0),
(587, 'b.	Open', 120, 0),
(588, 'c.	Save', 120, 1),
(589, 'd.	New', 120, 0),
(590, 'e.	Search', 120, 0),
(591, 'a.	Presentasi Impromptu  ', 121, 0),
(592, 'b.	Presentasi Manuscript ', 121, 1),
(593, 'c.	Presentasi Memoriter', 121, 0),
(594, 'd.	Presentasi Extepore', 121, 0),
(595, ' e.	Presentasi Bisnis', 121, 0),
(596, 'a.	Meninggalkan pesan mendalam pada audience   ', 122, 0),
(597, 'b.	Agar audience memahami tujuan dari presentasi', 122, 1),
(598, 'c.	Tercapainya goal presentasi ', 122, 0),
(599, 'd.	Agar audience fokus pada presentasi', 122, 0),
(600, 'e.	Agar audience senang', 122, 0),
(601, 'a.	CTRL + B    ', 123, 0),
(602, 'b.	CTRL + U', 123, 0),
(603, 'c.	CTRL + I', 123, 1),
(604, 'd.	CTRL + S', 123, 0),
(605, 'e.	CTRL + C', 123, 0),
(606, 'a.	CorelDRAW  ', 124, 0),
(607, 'b.	Microsoft Word ', 124, 0),
(608, 'c.	Photoshop ', 124, 0),
(609, 'd.	Paint', 124, 0),
(610, 'e.	MindMapple', 124, 1),
(611, 'a.	Label     ', 125, 0),
(612, 'b.	Tabel', 125, 0),
(613, 'c.	Dokumen', 125, 0),
(614, 'd.	Textbook', 125, 0),
(615, 'e.	Slide', 125, 1),
(616, 'a.	E-commerce   ', 126, 0),
(617, 'b.	E-banking', 126, 0),
(618, ' c.	E-book', 126, 1),
(619, 'd.	E-government', 126, 0),
(620, 'e.	E-accounting', 126, 0),
(621, 'a.	Microsoft Word  ', 127, 1),
(622, 'b.	Calibre ', 127, 0),
(623, 'c.	Microsoft Powerpoint ', 127, 0),
(624, 'd.	Photoshop', 127, 0),
(625, 'e.	Coreldraw', 127, 0),
(626, 'a.	Tidak mudah rusak  ', 128, 0),
(627, 'b.	Tidak memerlukan biaya yang besar ', 128, 0),
(628, 'c.	Tidak memakan tempat', 128, 0),
(629, 'd.	Sangat sulit disimpan ke dalam media penyimpanan ', 128, 0),
(630, 'e.	Mudah pengguna untuk membawanya', 128, 1),
(631, 'a.	PDF   ', 129, 1),
(632, 'b.	DJVU', 129, 0),
(633, 'c.	EPUB', 129, 0),
(634, 'd.	MobiPocket ', 129, 0),
(635, 'e.	HTML', 129, 0),
(636, 'a.	Sebagai media penyedia informasi  ', 130, 1),
(637, 'b.	Memaparkan kejadian nyata', 130, 0),
(638, 'c.	Mengkomunikasikan ide', 130, 0),
(639, 'd.	Menunjukkan cara kerja ', 130, 0),
(640, 'e.	Menunjukkan cara-cara tutorial', 130, 0),
(641, 'a.	LAN     ', 131, 0),
(642, 'b.	MAN', 131, 0),
(643, 'c.	WAN', 131, 1),
(644, 'd.	HUB', 131, 0),
(645, ' e.	Fiber optic', 131, 0),
(646, 'a.	Menampilkan output ', 132, 0),
(647, 'b.	Menghapus perintah', 132, 1),
(648, 'c.	Mengatur warna background DOS prompt   ', 132, 0),
(649, ' d.	Menampilkan versi pada sistem DOS  .', 132, 0),
(650, 'e.	Menghapus riwayat dari layar dari baris-baris perintah', 132, 0),
(651, 'a.	Algoritme    ', 133, 0),
(652, 'b.	Algorithm', 133, 1),
(653, 'c.	Algoritma', 133, 0),
(654, 'd.	Algorism', 133, 0),
(655, 'e.	Aritmatika', 133, 0),
(656, 'a.	Double  ', 134, 0),
(657, 'b.	String', 134, 0),
(658, 'c.	Integer', 134, 1),
(659, 'd.	Text ', 134, 0),
(660, ' e.	Date', 134, 0),
(661, 'a.	<   ', 135, 0),
(662, 'b.	+', 135, 0),
(663, 'c.	> ', 135, 0),
(664, 'd.	<=', 135, 0),
(665, 'e.	=', 135, 1),
(666, 'a.	Pemrograman    ', 136, 0),
(667, 'b.	Logika', 136, 0),
(668, 'c.	Algoritme', 136, 1),
(669, 'd.	Pseudocode', 136, 0),
(670, 'e.	Flowchart ', 136, 0),
(671, 'a.	Bitmap  ', 137, 0),
(672, 'b.	Vector', 137, 0),
(673, 'c.	GIF ', 137, 0),
(674, 'd.	JPEG ', 137, 1),
(675, 'e.	MP4', 137, 0),
(676, 'a.	Balance (keseimbangan)    ', 138, 1),
(677, 'b.	Sequence atau Rhythm (Urut/Irama)', 138, 0),
(678, 'c.	Unity (Kesatuan)', 138, 0),
(679, 'd.	Alignment (Perataan)', 138, 0),
(680, 'e.	Emphasis (Penekanan)', 138, 0),
(681, 'a.	Mondrian layout ', 139, 0),
(682, 'b.	Circus layout', 139, 0),
(683, 'c.	Frame layout', 139, 1),
(684, 'd.	Jumble layout', 139, 0),
(685, 'e.	Picture window layout', 139, 0),
(686, 'a.	Connector    ', 140, 0),
(687, 'b.	Arrow', 140, 0),
(688, 'c.	Predefined Process', 140, 0),
(689, 'd.	Preparation', 140, 1),
(690, 'e.	Process', 140, 0),
(691, 'a. bentuk lingkaran', 141, 0),
(692, 'b. bentuk segi enam', 141, 0),
(693, 'c. bentuk segi empat', 141, 0),
(694, 'd. bentuk panah', 141, 1),
(695, 'e. bentuk kotak bergaris', 141, 0),
(696, 'a.	Java   ', 142, 0),
(697, 'b.	C++', 142, 1),
(698, 'c.	Basic', 142, 0),
(699, 'd.	Pascal ', 142, 0),
(700, 'e.	Assembler ', 142, 0),
(701, 'a.	C++    ', 143, 1),
(702, 'b.	Pascal', 143, 0),
(703, 'c.	Java', 143, 0),
(704, 'd.	Visual basic', 143, 0),
(705, 'e.	Delphi', 143, 0),
(706, 'a.	System.out.Println(â€œKelas xâ€); ', 144, 0),
(707, 'b.	Public static void main (String [] args){', 144, 0),
(708, 'c.	/*â€¦..*/ ', 144, 1),
(709, 'd.	Import java.util.Scanner; ', 144, 0),
(710, 'e.	Public class kelas{', 144, 0),
(711, 'a.	System.out.Print(â€œKelas xâ€); ', 145, 0),
(712, 'b.	System.out.Println(â€œkelas x tkjâ€); ', 145, 0),
(713, 'c.	System.out.Print(â€œKelas x TKJâ€);  ', 145, 0),
(714, 'd.	System.out.Println(â€œKELAS X TKJâ€);', 145, 1),
(715, 'e.	System.out.Print(â€œKelas X Tkjâ€);', 145, 0),
(716, 'a.	System.out.Println(â€œKelas xâ€);   ', 146, 1),
(717, 'b.	Public static void main (String [] args){ ', 146, 0),
(718, 'c.	/*â€¦..*/', 146, 0),
(719, 'd.	Import java.util.Scanner;', 146, 0),
(720, 'e.	Public class kelas{', 146, 0),
(721, 'a.	Main  ', 147, 0),
(722, 'b.	For do ', 147, 0),
(723, 'c.	Repeat Until', 147, 0),
(724, 'd.	If else ', 147, 1),
(725, 'e.	Void', 147, 0),
(726, 'a.	Membuat program    ', 148, 0),
(727, 'b.	Membuat Algoritma', 148, 1),
(728, 'c.	Membeli komputer', 148, 0),
(729, 'd.	Proses ', 148, 0),
(730, 'e.	Mempelajari program', 148, 0),
(731, 'a.	Repeating ', 149, 0),
(732, 'b.	Looping ', 149, 1),
(733, 'c.	Again  ', 149, 0),
(734, 'd.	Funtion', 149, 0),
(735, 'e.	Replay', 149, 0),
(736, 'a.	Char x', 150, 0),
(737, 'b.	Long int ', 150, 0),
(738, 'c.	Float', 150, 0),
(739, ' d.	Short int ', 150, 1),
(740, 'e.	Signed long int', 150, 0),
(741, 'a.	Tipe data berfungsi menampung data yg memiliki angka belakang koma ', 151, 0),
(742, 'b.	Tipe data yang mempresentasikan data yang hanya mengandung dua nilai ', 151, 0),
(743, 'c.	Tipe data yang mepresentasikan data berupa karakter ', 151, 0),
(744, 'd.	Tipe data yang menyimpan lebih dari satu variabel ', 151, 0),
(745, 'e.	Tipe data yg digunakan untuk angka yg tidak memiliki angka dibelakang koma', 151, 1),
(746, 'a.	String', 152, 1),
(747, 'b.	Char  ', 152, 0),
(748, 'c.	Boolean ', 152, 0),
(749, 'd.	Byte', 152, 0),
(750, 'e.	Real ', 152, 0),
(751, 'a.	Penambahan', 153, 0),
(752, 'b.	Arimatika   ', 153, 0),
(753, 'c.	Logika', 153, 1),
(754, 'd.	Variabel', 153, 0),
(755, 'e.	Pengurangan', 153, 0),
(756, 'a.	Pembagian 2 bilangan   ', 154, 0),
(757, 'b.	Membagi per seratus persen', 154, 0),
(758, 'c.	Prosentasi 2 bilangan', 154, 0),
(759, 'd.	Mencari sisa pembagian 2 bilangan', 154, 0),
(760, 'e.	Presentase bilangan', 154, 1),
(761, 'a.	1   ', 155, 0),
(762, 'b.	2 ', 155, 1),
(763, 'c.	3', 155, 0),
(764, 'd.	4', 155, 0),
(765, 'e.	5', 155, 0),
(766, 'a.	Pertambahan  ', 156, 0),
(767, 'b.	Pengurangan', 156, 0),
(768, ' c.	Perkalian', 156, 0),
(769, 'd.	Pembagian dua bilangan bulat dengan outputnya berupa sisa hasil bagi ', 156, 1),
(770, 'e.	Pembagian dua bilangan bulat dengan hasilnya berupa bilangan bulat', 156, 0),
(771, 'a.	Bilangan bulat', 157, 0),
(772, 'b.	Bilangan logika', 157, 0),
(773, ' c.	Bilangan karakter', 157, 1),
(774, 'd.	Bilangan real', 157, 0),
(775, 'e.	Jenis data string', 157, 0),
(776, 'a.	&&   ', 158, 1),
(777, 'b.	||', 158, 0),
(778, 'c.	! ', 158, 0),
(779, 'd.	<>', 158, 0),
(780, 'e.	=', 158, 0),
(781, ' a.	&&', 159, 0),
(782, 'b.	||', 159, 1),
(783, 'c.	! ', 159, 0),
(784, 'd.	<>', 159, 0),
(785, 'e.	=', 159, 0),
(786, 'a.	1  ', 160, 1),
(787, 'b.	2 ', 160, 0),
(788, 'c.	3 ', 160, 0),
(789, 'd.	4', 160, 0),
(790, 'e.	5', 160, 0),
(791, 'a.	a = a + b   ', 161, 1),
(792, 'b.	a = a â€“ b', 161, 0),
(793, 'c.	a = a * b ', 161, 0),
(794, 'd.	a = a mod b', 161, 0),
(795, 'e.	a = a / b', 161, 0),
(796, 'a.	-128 .... 128 ', 162, 0),
(797, 'b.	0 sampai 2147483647 ', 162, 1),
(798, 'c.	0 ... 255 ', 162, 0),
(799, 'd.	0 sampai 65535', 162, 0),
(800, ' e.	0 sampai 9', 162, 0),
(801, 'a.	Heksadesimal   ', 163, 0),
(802, 'b.	 Oktal', 163, 0),
(803, 'c.	 Desimal ', 163, 0),
(804, 'd.	 biner', 163, 1),
(805, 'e.	bilangan ganjil', 163, 0),
(806, 'a.	NOT   ', 164, 0),
(807, 'b.	AND', 164, 0),
(808, 'c.	OR', 164, 1),
(809, 'd.	NOT OR(NOR) ', 164, 0),
(810, 'e.	NOT AND (NAND)', 164, 0),
(811, 'a.	NOT   ', 165, 0),
(812, 'b.	AND', 165, 0),
(813, 'c.	OR', 165, 1),
(814, 'd.	NOT OR(NOR) ', 165, 0),
(815, 'e.	NOT AND (NAND)', 165, 0),
(816, 'a.	NOT ', 166, 0),
(817, ' b.	AND ', 166, 1),
(818, 'c.	OR ', 166, 0),
(819, 'd.	NOT OR(NOR)', 166, 0),
(820, 'e.	NOT AND (NAND)', 166, 0),
(821, 'a.	NOT  ', 167, 0),
(822, 'b.	AND ', 167, 0),
(823, 'c.	OR', 167, 0),
(824, 'd.	NOT OR(NOR) ', 167, 0),
(825, 'e.	NOT AND (NAND)', 167, 1),
(826, 'a.	NOT   ', 168, 1),
(827, 'b.	AND', 168, 0),
(828, 'c.	OR', 168, 0),
(829, 'd.	NOT OR(NOR) ', 168, 0),
(830, 'e.	NOT AND (NAND)', 168, 0),
(831, 'a.	Hambatan listrik   ', 169, 0),
(832, 'b.	Resistor', 169, 0),
(833, 'c.	Kapasitor', 169, 0),
(834, 'd.	Induktor ', 169, 0),
(835, 'e.	gerbang logika', 169, 1),
(836, 'a.	NOT    ', 170, 0),
(837, 'b.	AND', 170, 1),
(838, 'c.	OR', 170, 0),
(839, 'd.	NOT OR(NOR)', 170, 0),
(840, 'e.	NOT AND (NAND)', 170, 0),
(841, 'a.	Heksadesimal ', 171, 0),
(842, 'b.	Oktal ', 171, 0),
(843, 'c.	Desimal  ', 171, 1),
(844, 'd.	biner', 171, 0),
(845, 'e.	bilangan ganjil', 171, 0),
(846, 'a.	Heksadesimal    ', 172, 0),
(847, 'b.	Oktal', 172, 0),
(848, 'c.	Desimal', 172, 0),
(849, 'd.	biner', 172, 1),
(850, 'e.	bilangan ganjil', 172, 0),
(851, 'a.	10678  ', 173, 0),
(852, 'b.	b10688 ', 173, 0),
(853, 'c.	c10768', 173, 1),
(854, 'd.	d10678 ', 173, 0),
(855, 'e.	e.10008', 173, 0),
(856, 'a.	A31   ', 174, 0),
(857, 'b.	b.B31', 174, 1),
(858, 'c.	C31 ', 174, 0),
(859, 'd.	D31', 174, 0),
(860, 'e.	E31', 174, 0),
(861, 'a.	a.1010  ', 175, 0),
(862, 'b.	b.910', 175, 0),
(863, 'c.	c.810', 175, 0),
(864, 'd.	d.710', 175, 1),
(865, 'e.	e.610', 175, 0),
(866, 'a.	N10 ', 176, 0),
(867, 'b.	N 2', 176, 1),
(868, 'c.	 N16 ', 176, 0),
(869, 'd.	 N8 ', 176, 0),
(870, 'e.	N0', 176, 0),
(871, 'a.	a.20010  ', 177, 0),
(872, 'b.	b.20510', 177, 0),
(873, 'c.	c21010 ', 177, 0),
(874, 'd.	d.21510 ', 177, 0),
(875, 'e.	semua salah', 177, 1),
(876, 'a.	2010', 178, 1),
(877, 'b.	b.2110 ', 178, 0),
(878, 'c.	c.2210 ', 178, 0),
(879, 'd.	d.2310', 178, 0),
(880, 'e.	e.128', 178, 0),
(881, 'a.	10000000(2) ', 179, 0),
(882, 'b.	11000000 (2) ) ', 179, 0),
(883, 'c.	11100000(2', 179, 0),
(884, 'd.	11110000(2) ', 179, 1),
(885, 'e.	00010110(2)', 179, 0),
(886, 'a.	.10000000(2)   ', 180, 0),
(887, 'b.	11000000 (2) ', 180, 1),
(888, 'c.	11100000(2)', 180, 0),
(889, 'd.	11110000(2)', 180, 0),
(890, 'e.	00010110(2)', 180, 0),
(891, 'a.	10000000(2)  ', 181, 0),
(892, 'b.	11000000 (2) ', 181, 0),
(893, 'c.	11100000(2)', 181, 1),
(894, 'd.	11110000(2)', 181, 0),
(895, 'e.	00010110(2)', 181, 0),
(896, 'a.	2510 ', 182, 1),
(897, 'b.	.2610 ', 182, 0),
(898, ' c.	2710 ', 182, 0),
(899, 'd.	d.2810 ', 182, 0),
(900, ' e.	291010', 182, 0),
(901, 'a.	1988 ', 183, 0),
(902, 'b.	9988  ', 183, 0),
(903, 'c.	15274', 183, 1),
(904, 'd.	25621', 183, 0),
(905, 'e.	34111', 183, 0),
(906, 'a.	22910   ', 184, 0),
(907, 'b.	20910', 184, 1),
(908, 'c.	22010', 184, 0),
(909, 'd.	21010', 184, 0),
(910, 'e.	22310', 184, 0),
(911, 'a.	00110011   ', 185, 1),
(912, 'b.	01010101', 185, 0),
(913, 'c.	11100011', 185, 0),
(914, 'd.	00001111', 185, 0),
(915, 'e.	11111111', 185, 0),
(916, 'a.	1111  ', 186, 0),
(917, 'b.	1010 ', 186, 0),
(918, 'c.	1111', 186, 1),
(919, 'd.	0000', 186, 0),
(920, 'e.	0011', 186, 0),
(921, 'a.	00110011  ', 187, 0),
(922, 'b.	01010101', 187, 0),
(923, ' c.	11100011', 187, 1),
(924, 'd.	00001111', 187, 0),
(925, 'e.	Semua salah', 187, 0),
(926, 'a.	1111   ', 188, 0),
(927, 'b.	1010', 188, 1),
(928, 'c.	1111', 188, 0),
(929, 'd.	0000', 188, 0),
(930, 'e.	0011', 188, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `no` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`no`, `keterangan`) VALUES
(1, 'X  TKJ'),
(2, 'XI TKJ'),
(3, 'XII TKJ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_siswa`
--

CREATE TABLE `nilai_siswa` (
  `no` int(11) NOT NULL,
  `siswa` varchar(20) NOT NULL,
  `ujian` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nilai_siswa`
--

INSERT INTO `nilai_siswa` (`no`, `siswa`, `ujian`, `nilai`, `status`) VALUES
(3, '288064', 3, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_jawaban`
--

CREATE TABLE `riwayat_jawaban` (
  `no` int(11) NOT NULL,
  `siswa` varchar(20) NOT NULL,
  `jawaban` int(11) NOT NULL,
  `soal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(20) NOT NULL,
  `nama` text NOT NULL,
  `kelas` int(11) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `alamat` longtext NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `kelas`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `password`, `email`) VALUES
('245064', 'ABD.KARIM', 3, 'Bangkalan', '2004-03-06', 'Laki-laki', 'Bringen', '827ccb0eea8a706c4c34a16891f84e7b', 'maulidatul3105@gmail.com'),
('246064', 'AINUR ROFEK', 3, 'Bangkalan', '2003-11-23', 'Laki-laki', 'Rabesen', '827ccb0eea8a706c4c34a16891f84e7b', 'hotimah3105@gmail.com'),
('247064', 'M.FATHUL AMIN F', 3, 'Pasuruan', '2003-09-17', 'Laki-laki', 'Jl. Raya bululawang', '827ccb0eea8a706c4c34a16891f84e7b', 'maulidatul3105@gmail.com'),
('248064', 'MOOH.TAUFIK', 3, 'Bangkalan', '2004-03-24', 'Laki-laki', 'Jurang', '827ccb0eea8a706c4c34a16891f84e7b', 'maulidatul3105@gmail.com'),
('249064', 'MOH.UREP', 3, 'Bangkalan', '2003-10-10', 'Laki-laki', 'Gilih Timur', '827ccb0eea8a706c4c34a16891f84e7b', 'maulidatul3105@gmail.com'),
('250064', 'MUBAROK', 3, 'Gilih Timur', '2003-07-01', 'Laki-laki', 'Korot Dajah', '827ccb0eea8a706c4c34a16891f84e7b', 'maulidatul3105@gmail.com'),
('251064', 'MUHAMMAD HAFIF', 3, 'Bangkalan', '2003-06-17', 'Laki-laki', 'Jukong Masjid', '827ccb0eea8a706c4c34a16891f84e7b', 'maulidatul3105@gmail.com'),
('253064', 'NURUL HUDA', 3, 'Bangkalan', '2004-10-23', 'Laki-laki', 'Kebun Lompang', '827ccb0eea8a706c4c34a16891f84e7b', 'maulidatul3105@gmail.com'),
('254064', 'SELIL', 3, 'Bangkalan', '2000-04-11', 'Laki-laki', 'Gilih Timur', '827ccb0eea8a706c4c34a16891f84e7b', 'maulidatul3105@gmail.com'),
('255064', 'WASILUL ARHAM', 3, 'Bangkalan', '2004-10-27', 'Laki-laki', 'Koalas', '827ccb0eea8a706c4c34a16891f84e7b', 'maulidatul3105@gmail.com'),
('256064', 'ELOK FAIKOTUL HASANAH', 3, 'Bangkalan', '2003-12-25', 'Perempuan', 'Jurang', '827ccb0eea8a706c4c34a16891f84e7b', 'maulidatul3105@gmail.com'),
('258064', 'FINA RAHMATIKA', 3, 'Surabaya', '2003-06-04', 'Perempuan', 'Bulak Banteng', '827ccb0eea8a706c4c34a16891f84e7b', 'maulidatul3105@gmail.com'),
('259064', 'KONITA', 3, 'Bangkalan', '2003-02-10', 'Perempuan', 'Soket Laok', '827ccb0eea8a706c4c34a16891f84e7b', 'maulidatul3105@gmail.com'),
('260064', 'RATNA WATI NINGSIH', 3, 'Bangkalan', '2004-06-05', 'Perempuan', 'Dsn Jaddih Timur II', '827ccb0eea8a706c4c34a16891f84e7b', 'maulidatul3105@gmail.com'),
('261064', 'SITI LATIFAH', 3, 'Bangkalan', '2002-11-23', 'Perempuan', 'Baengas', '827ccb0eea8a706c4c34a16891f84e7b', 'maulidatul3105@gmail.com'),
('262064', 'USWATUN HASANAH', 3, 'Bangkalan', '2004-05-17', 'Perempuan', 'Jurang', '827ccb0eea8a706c4c34a16891f84e7b', 'maulidatul3105@gmail.com'),
('263064', 'WEFA WULANDARI', 3, 'Bangkalan', '2004-03-05', 'Perempuan', 'Dsn. Rangmanten', '827ccb0eea8a706c4c34a16891f84e7b', 'maulidatul3105@gmail.com'),
('264064', 'ZAENAF', 3, 'Jakarta', '2003-03-09', 'Perempuan', 'Kebun Lompang', '827ccb0eea8a706c4c34a16891f84e7b', 'maulidatul3105@gmail.com'),
('265064', 'ALFIN MAULANA', 2, 'Bangkalan', '2005-06-15', 'Laki-laki', 'Baengas', '827ccb0eea8a706c4c34a16891f84e7b', 'maulidatul3105@gmail.com'),
('266064', 'FAUZAN', 2, 'Bangkalan', '2004-07-15', 'Laki-laki', 'Kolpoh', '827ccb0eea8a706c4c34a16891f84e7b', 'maulidatul3105@gmail.com'),
('267064', 'KAFILA AMIRUDIN', 2, 'Bangkalan', '2009-05-27', 'Laki-laki', 'Jl. Raya Jukong', '827ccb0eea8a706c4c34a16891f84e7b', 'maulidatul3105@gmail.com'),
('268064', 'M. RIZKY', 2, 'Bangkalan', '2005-02-02', 'Laki-laki', 'Sukolilo Timur', '827ccb0eea8a706c4c34a16891f84e7b', 'maulidatul3105@gmail.com'),
('269064', 'MOH. ISHAQ', 2, 'Bangkalan', '2005-11-28', 'Laki-laki', 'Dusun Pandabah Bawah', '827ccb0eea8a706c4c34a16891f84e7b', 'maulidatul3105@gmail.com'),
('270064', 'MOH. LUTFI MUBAROK', 2, 'Bangkalan', '2005-03-09', 'Laki-laki', 'Sukolilo Timur', '827ccb0eea8a706c4c34a16891f84e7b', 'maulidatul3105@gmail.com'),
('271064', 'ROYHAN JAILANI', 2, 'Surabaya', '2005-07-03', 'Laki-laki', 'Jatipurwo 6/33', '827ccb0eea8a706c4c34a16891f84e7b', 'maulidatul3105@gmail.com'),
('272064', 'SHOLIHIN', 2, 'Bangkalan', '2004-06-29', 'Laki-laki', 'Kampung Pasarean', '827ccb0eea8a706c4c34a16891f84e7b', 'maulidatul3105@gmail.com'),
('274064', 'AGUSTINA AYU WULANDARI', 2, 'Bangkalan', '2005-08-20', 'Perempuan', 'Dusun Koalas', '827ccb0eea8a706c4c34a16891f84e7b', 'hotimah3105@gmail.com'),
('275064', 'AYU RISQI FITRIA', 2, 'Bangkalan', '2006-10-03', 'Perempuan', 'Jl. Raya Jukong', '827ccb0eea8a706c4c34a16891f84e7b', 'hotimah3105@gmail.com'),
('276064', 'DIANA ARDILA', 2, 'Bangkalan', '2005-04-20', 'Perempuan', 'Korot Dajah', '827ccb0eea8a706c4c34a16891f84e7b', 'hotimah3105@gmail.com'),
('277064', 'FATONAH', 2, 'Bangkalan', '2004-07-01', 'Perempuan', 'Dsn. Pandabah', '827ccb0eea8a706c4c34a16891f84e7b', 'hotimah3105@gmail.com'),
('278064', 'HOSIYAH', 2, 'Bangkalan', '2005-06-06', 'Perempuan', 'Dsn. Pandabah', '827ccb0eea8a706c4c34a16891f84e7b', 'hotimah3105@gmail.com'),
('279064', 'IMROATUL ALIYAH', 2, 'Sidoarjo', '2005-04-27', 'Perempuan', 'Jl. Nyi Cempo Barat', '827ccb0eea8a706c4c34a16891f84e7b', 'hotimah3105@gmail.com'),
('280064', 'JUMROTUL ERNIA', 2, 'Bangkalan', '2004-06-25', 'Perempuan', 'Dusun Labang', '827ccb0eea8a706c4c34a16891f84e7b', 'hotimah3105@gmail.com'),
('281064', 'LAILATUL MUSYAROFAH', 2, 'Bangkalan', '2004-02-22', 'Perempuan', 'Baengas', '827ccb0eea8a706c4c34a16891f84e7b', 'hotimah3105@gmail.com'),
('282064', 'NAFISATUS SAIDAH', 2, 'Bangkalan', '2004-06-24', 'Perempuan', 'Dsn. Masjid', '827ccb0eea8a706c4c34a16891f84e7b', 'hotimah3105@gmail.com'),
('283064', 'NUR AINI', 2, 'Bangkalan', '2005-06-22', 'Perempuan', 'Dsn.Pandabah Bawah', '827ccb0eea8a706c4c34a16891f84e7b', 'hotimah3105@gmail.com'),
('284064', 'NUR AULIA', 2, 'Bangkalan', '2005-11-01', 'Perempuan', 'Tlagah', '827ccb0eea8a706c4c34a16891f84e7b', 'hotimah3105@gmail.com'),
('285064', 'NUR UMAMIH', 2, 'Bangkalan', '2004-04-14', 'Perempuan', 'Jl. raya jukong', '827ccb0eea8a706c4c34a16891f84e7b', 'hotimah3105@gmail.com'),
('286064', 'PUTRI NOVIANTI R', 2, 'Bangkalan', '2004-11-02', 'Perempuan', 'Labang', '827ccb0eea8a706c4c34a16891f84e7b', 'hotimah3105@gmail.com'),
('287064', 'RUKMINI', 2, 'Bangkalan', '2005-01-01', 'Perempuan', 'Dsn.Pandabah ', '827ccb0eea8a706c4c34a16891f84e7b', 'hotimah3105@gmail.com'),
('288064', 'AINUL YAKIN', 1, 'Bangkalan', '2007-12-07', 'Laki-Laki', 'Dsn. Candih', '827ccb0eea8a706c4c34a16891f84e7b', 'indahindah3105@gmail.com'),
('289064', 'FAHRIZAL', 1, 'Bangkalan', '2005-10-07', 'Laki-Laki', 'Labang', '827ccb0eea8a706c4c34a16891f84e7b', 'indahindah3105@gmail.com'),
('290064', 'GOFAR AINUL YAKIN', 1, 'Surabaya', '2004-02-08', 'Laki-Laki', 'Bulak banteng baru, gg. anggrek', '827ccb0eea8a706c4c34a16891f84e7b', 'indahindah3105@gmail.com'),
('291064', 'JAVIER ASYAM', 1, 'Surabaya', '2005-08-12', 'Laki-laki', 'Dukuh gogor no.45', '827ccb0eea8a706c4c34a16891f84e7b', 'indahindah3105@gmail.com'),
('292064', 'MIFTAHUS SURUR', 1, 'Bangkalan', '2006-04-02', 'Laki-Laki', 'Campor', '827ccb0eea8a706c4c34a16891f84e7b', 'indahindah3105@gmail.com'),
('293064', 'MUAMMAR SYAWALUDIN Y', 1, 'Bangkalan', '2006-02-04', 'Laki-Laki', 'Dsn. Tengginah', '827ccb0eea8a706c4c34a16891f84e7b', 'indahindah3105@gmail.com'),
('294064', 'MUHAMMAD SYIFAUL QULUB', 1, 'Surabaya', '2005-02-04', 'Laki-Laki', 'Putat Jaya Baru I/18', '827ccb0eea8a706c4c34a16891f84e7b', 'indahindah3105@gmail.com'),
('295064', 'NURUL HUDA', 1, 'Bangkalan', '2006-12-03', 'Laki-Laki', 'Tengginah', '827ccb0eea8a706c4c34a16891f84e7b', 'indahindah3105@gmail.com'),
('296064', 'SUHADIRI', 1, 'Bangkalan', '2006-02-06', 'Laki-Laki', 'Dsn. Kolpoh', '827ccb0eea8a706c4c34a16891f84e7b', 'indahindah3105@gmail.com'),
('297064', 'MOH. ILHAM', 1, 'Bangkalan', '2006-09-08', 'Laki-Laki', 'Kolpoh', '827ccb0eea8a706c4c34a16891f84e7b', 'indahindah3105@gmail.com'),
('300064', 'AFIFAH MUSTAFIDAH', 1, 'Bangkalan', '2006-02-22', 'Perempuan', 'Dsn. Pendabah Bawah', '827ccb0eea8a706c4c34a16891f84e7b', 'indahindah3105@gmail.com'),
('301064', 'AMINATUZZUH RIA', 1, 'Bangkalan', '2006-05-05', 'Perempuan', 'Labang', '827ccb0eea8a706c4c34a16891f84e7b', 'indahindah3105@gmail.com'),
('302064', 'HUSNUL HOTIMAH', 1, 'Bangkalan', '2004-03-03', 'Perempuan', 'Dsn.Pandabah Bawah', '827ccb0eea8a706c4c34a16891f84e7b', 'indahindah3105@gmail.com'),
('303064', 'IBA', 1, 'Bangkalan', '2006-05-22', 'Perempuan', 'Kp. Sawangan', '827ccb0eea8a706c4c34a16891f84e7b', 'indahindah3105@gmail.com'),
('304064', 'IRNAWATI DEWI', 1, 'Bangkalan', '2005-03-12', 'Perempuan', 'Kebun Kamal', '827ccb0eea8a706c4c34a16891f84e7b', 'indahindah3105@gmail.com'),
('305064', 'LULUK RISKIYAH', 1, 'Bangkalan', '2006-02-28', 'Perempuan', 'kebun Kamal\r\n', '827ccb0eea8a706c4c34a16891f84e7b', 'indahindah3105@gmail.com'),
('306064', 'NABILA MAULANI FAJRI', 1, 'Bangkalan', '2009-09-14', 'Perempuan', 'Kebun Kamal', '827ccb0eea8a706c4c34a16891f84e7b', 'indahindah3105@gmail.com'),
('307064', 'NADIATUR ROHMAH', 1, 'Bangkalan', '2006-04-18', 'Perempuan', 'Jl. Raya Kebun', '827ccb0eea8a706c4c34a16891f84e7b', 'indahindah3105@gmail.com'),
('308064', 'NAHDA ALIFA', 1, 'Bangkalan', '2005-12-25', 'Perempuan', 'Paserean', '827ccb0eea8a706c4c34a16891f84e7b', 'indahindah3105@gmail.com'),
('309064', 'NUR HASANAH', 1, 'Bangkalan', '2005-06-30', 'Perempuan', 'Kebun Kamal', '827ccb0eea8a706c4c34a16891f84e7b', 'indahindah3105@gmail.com'),
('310064', 'NURUL AINIYAH', 1, 'Bangkalan', '2005-09-16', 'Perempuan', 'Jukong Koalas', '827ccb0eea8a706c4c34a16891f84e7b', 'indahindah3105@gmail.com'),
('311064', 'NURUL HIDAYATI AGUSTIN', 1, 'Bangkalan', '2006-08-19', 'Perempuan', 'Dusun Candih', '827ccb0eea8a706c4c34a16891f84e7b', 'indahindah3105@gmail.com'),
('312064', 'PUTRI NURTUMALA SARI', 1, 'Surabaya', '2005-05-06', 'Perempuan', 'Kalimas Baru II', '827ccb0eea8a706c4c34a16891f84e7b', 'indahindah3105@gmail.com'),
('313064', 'RIYA FAUZIA SAPUTRI', 1, 'Bangkalan', '2005-12-24', 'Perempuan', 'Dusun Tengginah', '827ccb0eea8a706c4c34a16891f84e7b', 'indahindah3105@gmail.com'),
('314064', 'SITI CHOTIJATUSH SHOLICH', 1, 'Sidoarjo', '2006-05-11', 'Perempuan', 'Wonocolo Selatan', '827ccb0eea8a706c4c34a16891f84e7b', 'indahindah3105@gmail.com'),
('315064', 'SITI UMAMAH', 1, 'Bangkalan', '2005-03-31', 'Perempuan', 'Kebun Kamal', '827ccb0eea8a706c4c34a16891f84e7b', 'indahindah3105@gmail.com'),
('316064', 'SRI LAILATUL QOMARIYAH', 1, 'Bangkalan', '2006-02-04', 'Perempuan', 'Dusun Pandabah', '827ccb0eea8a706c4c34a16891f84e7b', 'indahindah3105@gmail.com'),
('317064', 'SYIFAUL UYUN', 1, 'Surabaya', '2005-09-05', 'Perempuan', 'Tambak Mayor Utara', '827ccb0eea8a706c4c34a16891f84e7b', 'indahindah3105@gmail.com'),
('318064', 'IZZAH AFKARINA', 1, 'Jakarta', '2006-05-16', 'Perempuan', 'Jl. AL-Amanah Rt.009/Rw.010', '827ccb0eea8a706c4c34a16891f84e7b', 'indahindah3105@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal`
--

CREATE TABLE `soal` (
  `no` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `ujian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `soal`
--

INSERT INTO `soal` (`no`, `pertanyaan`, `ujian`) VALUES
(4, 'Yang bukan merupakan perangkat input adalah..', 3),
(5, 'Yang bukan merupakan perangkat output adalah..', 3),
(6, 'dibawah ini yang termasuk media penyimpanan, kecuali..', 3),
(7, 'papan ketik komputer disebut dengan..', 3),
(8, 'papan rangkaian komputer atau sering disebut dengan otak dari komputer adalah...', 3),
(9, 'apa nama lain dari penyimpanan..', 3),
(10, 'hal yang harus disiapkan sebelum merakit komputer adalah..', 3),
(11, 'jikja ingin mengedit foto kita bisa menggunakan software..', 3),
(12, 'jaringan milik pribadi disebuah gedung atau kampus yang berukuran sampai beberapa kilometer merupakan jaringan..', 3),
(13, 'jenis jaringan yang lebih luasdan dapat menghubungkan dengan negara lain atau benua,disebut jaringan..', 3),
(14, 'corelDraw adalah ...', 4),
(15, 'Tombol pada keyboard untuk membuat grafik baru pada coreldraw adalah..', 4),
(16, 'bagaimana cara mengexport gambar di coreldraw?', 4),
(17, 'rectangle tool berfungsi untuk..', 4),
(18, 'sementara elipde tool berfungsi untuk...', 4),
(19, 'tombol pada keyboard untuk mengexport gambar adalah menekan..', 4),
(20, 'alat yang digunakan untuk membentuk berbagai objek garis artistik adalah', 4),
(21, 'dimension tool adalah alat untuk..', 4),
(22, 'alat yang digunakan untuk menarik, memindahkan objek adalah..', 4),
(23, 'ctrl+Z adalah shorcut pada keyboard untuk..', 4),
(24, 'Dibawah ini yang merupakan kepanjangan dari BIOS adalah.....', 5),
(25, 'Program yang berfungsi untuk  mengatur dan mengkonfigurasi sistem komputer adalah....', 5),
(26, 'Tempat untukmenyimpan file yang terdapat beberapa file di sebut..', 5),
(27, 'Folder yang ada di dalam folder yang terdapat beberapa file di sebut..', 5),
(28, 'Bagian dari software yang berfungsi sebagai interface/antar muka antara user,hardware dan  software di sebut dengan.....', 5),
(29, 'Sistem operasi yang cara meng eksekusinya dengan cara mengeklik simbol/gambar di sebut.....', 5),
(30, 'Sistem operasi yang cara meng eksekusinya dengan cara menuliskan perintah/text di sebut.....', 5),
(31, 'Di bawah ini yang merupakan kepanjangan dari GUI adalah.....', 5),
(32, 'Di bawah ini yang merupakan kepanjangan dari CLI adalah......', 5),
(33, 'Sistem operasi yang hanya mampu menjalankan satu buah intruksi pada saat bersamaan di sebut........', 5),
(34, 'Dalam menyusun suatu program,langkah pertama yang harus di lakkukan adalah ', 6),
(35, 'Sebuah prosedur langkah demi langkah yang pasti untuk menyelesaikan sebuah masalah di sebut ', 6),
(36, 'Pseudocode yang di gunakan pada penulisan algoritma berupa', 6),
(37, 'Pada pembuatan program komputer, algoritma dibuat..', 6),
(38, 'Tahapan dalam menyelesaikan suatu masalah adalah ', 6),
(41, 'Instruksi P=Q akan mengakibatkan nilai P=nilaiQ,dan nilai Q menjadi ', 6),
(42, 'Apabila a=5, b=10, maka jika di berikan instruksi a=b; b=a akan mengakibatkan', 6),
(43, 'Tipe bilangan bulat dalam bahasa pascal dikenal sebagai..', 6),
(44, 'Komponen dasar elektronika yang di gunakan untuk membatasi jumlah arus yang mengalir dalam satu rangkaian di sebut.....', 7),
(45, 'Sistem yang hanya mengenal dua jenis angka 0 dan 1 merupakan bilangan berbasis.......', 7),
(46, 'Sistem bilangan yang hanya mengenal delapan jenis angka (numerik),yaitu 0,1,2,3,4,5,6,7 merupakan bilangan berbasis.......', 7),
(47, 'Sistem bilangan yang memiliki 10 jenis angka (numerik) dengan format N10 merupakan bilangan berbasis......', 7),
(49, 'bilangan biner dapat di tuliskan dengan format..', 7),
(50, 'Bilangan oktal dapat di tuliskan dengan format....', 7),
(51, 'Bilangan heksadesimal dapat dituliskan dengan format....', 7),
(52, '(0,1,2,3,4,5,6,7,8,9, A,B,C,D, dan F )merupakan jenis bilangan berbasis..', 7),
(53, 'D16 merupakan salah satu jenis bilangan berbasis..', 7),
(54, 'Sistem operasi yang dapat menjalankan lebih dari satu intruksi pada waktu bersamaan di sebut....', 5),
(55, 'Perintah untuk menampilkan  directory pada cmd  adalah....', 5),
(56, 'Perintah untuk menghapus directory pada cmd adalah....', 5),
(57, 'Perintah untuk membuat directory pada cmd adalah....', 5),
(58, 'Perintah untuk kembali ke directory sebelumnya pada cmd adalah...', 5),
(59, 'Perintah untuk masuk ke directory selanjutnya pada cmd adalah....', 5),
(60, 'Yang bukan merupakan perangkat input adalah......', 5),
(61, 'Yang bukan merupakan perangkat output....', 5),
(62, 'Dibawah ini yang termasuk media penyimpanan ,kecuali...', 5),
(63, 'Papan ketik komputer  disebut dengan.....', 5),
(64, 'Papan rangkaian komputer atau sering di sebut dengan otak dari komputer adalah...', 5),
(65, 'Apa nama lain dari penyimpanan.....', 5),
(66, 'Hal yang harus di siapkan sebelum merakit komputer adalah....', 5),
(67, 'Jika ingin mengedit photo kita memerlukan software...', 5),
(68, 'jaringan milik pribadi di dalam sebuah gedung atau kampus yang berukuran sampai beberapa kilo meter merupakan jaringan.......', 5),
(69, 'Jenis jaringan yang lebih luas  dan dapat menghubungkan dengan negara lain atau dari satu benua ke benua lain di sebut jaringan....', 5),
(70, 'Jenis jaringan komputer yang bisa menghubungkan dari satu kota ke kota yang lain merupakan jaringan.....', 5),
(73, 'Sistem file yang paling aman pada windows adalah....', 5),
(74, 'Untuk menyimpan hasil perubahan pada BIOS menggunakan tombol..', 5),
(75, 'ECHO merupakan salah satu perintah pada command promt yang di gunakan untuk..', 5),
(76, 'COLOR merupakan salah satu perintah pada command promt yang di gunakan untuk..', 5),
(77, 'VER merupakan salah satu perintah pada command promt yang di gunakan untuk....', 5),
(78, 'CLS merupakan salah satu perintah pada command promt yang di gunakan untuk...', 5),
(81, 'Untuk membuat grafik baru pada CorelDRAW adalah ...', 4),
(82, 'Asal kata ilustrasi berasal dari bahasa latin, yaitu â€¦', 4),
(83, 'Untuk membuat background terdapat pada menu â€¦', 4),
(84, 'CorelDRAW dapat melakukan eksport format file berikut, kecuali â€¦', 4),
(85, 'Table tool digunakan untukâ€¦.', 4),
(86, 'Alat yang berfungsi untuk menarik dan memindahkan sebuah objek adalah...', 4),
(87, 'Berikut ini yang bukan prinsip-prinsip dari sebuah desain grafis adalah...', 4),
(88, 'Dimension tool adalah alat untuk ..', 4),
(89, 'Garis putus-putus dapat disetting di properties...', 4),
(90, 'Untuk menyimpan file hasil olahan CorelDRAW agar menjadi format standart (*cdr), langkahnya adalah...', 4),
(92, 'Warna primer yaitu warna dasar yang tidak merupakan campuran dari warna lain. dibawah ini termasuk warna primer ...', 4),
(93, 'Desain grafis terdapat bebrapa jenis garis, garis yang mengungkapkan ragu, misterius, takut adalah garis.....', 4),
(94, 'Garis putus-putus dapat disetting di properties...', 4),
(95, 'Prinsip desain yang memberikan perbedaan mendasar pada desain yang satu dengan  lainnya merupakan pengertian dari â€¦', 4),
(96, 'Berikut format file gambar, kecuali â€¦', 4),
(97, 'Penempatan elemen desain berada ditengah secara horizontal atau mendatar disebut ..', 4),
(99, 'Untuk mengubah huruf text pada corelDRAW adalah menggunakan...', 4),
(100, 'Alat untuk melakukan scanning disebut â€¦', 4),
(101, 'Untuk menghasilkan kombinasi warna merah keunguan, diperlukan kombinasi dua warna sekunder, yaitu â€¦', 4),
(102, 'Alat yang digunakan untuk mengidentifikasi logam dalam jarak tertentu adalah ..', 4),
(103, 'Kumpulan garis dan kurva akan membentuk sebuah gambar â€¦', 4),
(104, 'Berikut yang tidak termasuk sebagai keluaran file hasil desain gambar tipe vektor adalah â€¦', 4),
(105, 'Serangkaian langkah-langkah yang disusun menjadi urutan logis untuk mencapai tujuan disebut â€¦', 3),
(107, 'Salah satu cara untuk memvisualisasikan proses berpikir adalah dengan menggunakan ', 3),
(108, 'Aplikasi pengolah kata adalah ', 3),
(109, 'CTRL + N berfungsi untuk ..', 3),
(110, 'Aplikasi pengolah angka adalah â€¦', 3),
(111, 'Untuk menebalkan huruf disebut â€¦', 3),
(112, 'Perpaduan baris dan kolom pada Microsoft Excel disebut ', 3),
(113, 'Penggunaan rumus =AVERAGE pada Excel digunakan untuk â€¦\r\n', 3),
(114, 'Untuk membuat formula atau rumus, maka pada awal data harus di tulis tanda â€¦', 3),
(115, 'Penggunaan rumus=SUM pada Excel digunakan untuk â€¦', 3),
(116, 'Penemu peta minda adalah ', 3),
(117, 'Perintah menambah slide baru pada PowerPoint â€¦', 3),
(118, 'Cara cepat menampilkan atau menjalankan file presentasi adalah ', 3),
(119, 'Cara membuat teks bergerak melalui menu â€¦', 3),
(120, 'Perintah untuk menyimpan file adalah ', 3),
(121, 'Jenis presentasi yang  dilakukan mendadak tanpa persiapan  disebut ..', 3),
(122, 'Fungsi dari pembuka dalam sebuah presentasi adalah â€¦', 3),
(123, 'Agar teks bercetak miring maka harus menekan tombol â€¦', 3),
(124, 'Salah satu software yang digunakan untuk membuat peta minda adalah â€¦', 3),
(125, 'Sebuah presentasi tersusun dari kumpulan ..', 3),
(126, 'file digital  yang berisi informasi berupa panduan/tutorial yg dibuat dengan perangkat digital disebut â€¦', 3),
(127, 'Aplikasi yang dapat mengelola e-book yang bersifat open source adalah â€¦', 3),
(128, 'Berikut yang bukan termasuk kelebihan e-book adalah â€¦', 3),
(129, 'Format buku digital yang mudah dibuka dg aplikasi Adobe Acrobat Reader/Foxit Reader adalah â€¦', 3),
(130, 'Salah satu fungsi buku digital adalah â€¦', 3),
(131, 'Cangkupan jaringan yg luas sehingga efisien,mudah & cepat adalah jaringan......', 5),
(132, 'CLS merupakan  perintah pada command promt yang di gunakan untuk', 5),
(133, 'Algoritma berasal dari kata â€¦', 6),
(134, 'â€œ 1945 â€œ untuk memasukkan angka disamping menggunakan tipe data â€¦', 6),
(135, 'Berikut merupakan simbol operasi perbandingan, kecuali â€¦', 6),
(136, 'Urutan langkah logis penyelesaian masalah yang disusun sistematis dan logis adalah â€¦', 6),
(137, 'image yg menampilkan animasi gambar, membatasi warna pada kedalaman 256 yaitu image dg format...', 4),
(138, 'Prinsip desain yg memberikan perbedaan mendasar pada desain yang satu dengan yg lainnya adalah pengertian dari â€¦', 4),
(139, 'Pilihan tipe layout yg sesuai dg ciri utama gambar berukuran besar memenuhi layout, ada teks, logo yaitu â€¦', 4),
(140, 'Notasi gambar panah kebawah digunakan untuk menunjukkan ..', 6),
(141, 'Simbol berikut yang digunakan untuk menunjukkan arah aliran proses pada flowchart adalah â€¦', 6),
(142, 'Yang bukan termasuk bahasa tingkat tinggi adalah ', 6),
(143, 'Bahasa pemrograman yang digunakan dalam aplikasi netbeans adalah ..', 6),
(144, 'Source code dalam menulis komentar pada netbeans adalah â€¦', 6),
(145, 'Untuk memunculkan output â€œ KELAS X TKJ â€œ maka source code ', 6),
(146, 'Pada proses input dan output dalam java, maka harus memasukkan source code â€¦', 6),
(147, 'Yang termasuk ke dalam jenis algoritma percabangan adalah...', 6),
(148, 'Dalam menyusun suatu program,langkah pertama yang harus di lakkukan adalah ', 6),
(149, 'Istilah \"Perulangan\" dalam pemograman Java dikenal dengan...', 6),
(150, 'Int x = 3.05;, tipe data yang digunakan adalah..', 6),
(151, 'Pernyataan yang sesuai untuk mendefinisikan tipe data bilangan bulat adalah', 6),
(152, 'Tipe data bahasa Java untuk true false adalah...\r\n\r\n', 6),
(153, 'Yang bukan termasuk jenis operator yaitu...', 6),
(154, 'Fungsi dari operator % sebagai...\r\n\r\n', 6),
(155, 'Pernyataan a = 7 % 4 akan menghasilkan a = ...', 6),
(156, 'Operasi aritmatika div berfungsi sebagai ', 6),
(157, 'Bilangan yang dapat mengandung nilai pecahan dalam bentuk desimal merupakan jenis bilangan â€¦\r\n\r\n\r\n', 6),
(158, 'Operator logika yang menyatakan \"dan\" dalam lambang berikut ini adalah...', 6),
(159, 'Operator logika yang menyatakan \"atau\" dalam lambang berikut ini adalah...\r\n\r\n\r\n\r\n', 6),
(160, 'Pada modulus 4%3 maka hasilnya ', 6),
(161, 'Ekspresi yang tidak dapat dilakukan oleh tipe data integer adalah', 6),
(162, 'Tipe data Integer yang bernama Byte memiliki berapa nilai jangkauan ..', 6),
(163, 'Sistem bilangan yg memiliki 10 jenis angka(numerik) dengan format N10 merupakan bilangan berbasis......', 7),
(164, 'Pengoperasian gerbang logika bernilai keluaran true.jika salah,satu input data bernilai true .gerbang logika apa......', 7),
(165, 'X=A+B merupakan persamaan dari gerbang logika......\r\n\r\n', 7),
(166, 'X= A.B atau X=AB merupakan persamaan dari gerbang logika........\r\n\r\n', 7),
(167, 'X= A Ì… merupakan persamaan dari gerbang  logika.....', 7),
(168, 'gerbang logika yang menghasilkan nilai true hanya jika semua nilai input bernilai true, pernyataan tersebut logika.....', 7),
(169, 'Komponen dasar elektronika yg di gunakan untuk membatasi jumlah arus yang mengalir dalam satu rangkaian di sebut...', 7),
(170, 'yang menghasilkan nilai kebalikannya dari nilai input merupakan pengoperasian gerbang logika.....', 7),
(171, 'Sistem bilangan yg memiliki  16 jenis simbol yg terdiri atas 10 jenis angka (numerik) dan 6 karakter merupakan bilangan berbasis...', 7),
(172, '(0,1,2,3,4,5,6,7,8,9, A,B,C,D, dan F )merupakan jenis bilangan berbasis....', 7),
(173, 'Berapakah jumlah dari 3548 dan 5138?', 7),
(174, 'Berapakah jumlah dari 39916 dan 8988?', 7),
(175, 'konversikan 00000110(2) ...........(10)\r\n\r\n\r\n\r\n', 7),
(176, 'bilangan biner dapat di tuliskan dengan format....\r\n\r\n', 7),
(177, 'konversikan 100000111(2)............(10)\r\n\r\n', 7),
(178, 'konversikan 00010110(2)............(10) \r\n\r\n', 7),
(179, 'konversikan 128(10)..............(2)\r\n\r\n', 7),
(180, 'konversikan 2210........... (2)\r\n\r\n', 7),
(181, 'konversikan 192(10)..........(2)\r\n\r\n\r\n', 7),
(182, 'konversikan 1A16........10\r\n\r\n', 7),
(183, 'Nilai oktal dari bilangan 1ABC16 adalah......\r\n\r\n', 7),
(184, 'nilai desimal dari bilangan 3218 adalah.....\r\n', 7),
(185, 'komplemen 1 dari 11001100 adalah.....\r\n\r\n\r\n', 7),
(186, ' komplemen 1 dari 1100 adalah.......\r\n\r\n\r\n', 7),
(187, 'komplemen 2 dari 11001100 adalah.....\r\n\r\n\r\n', 7),
(188, 'komplemen 2 dari 1100 adalah.......\r\n\r\n\r\n', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `token`
--

CREATE TABLE `token` (
  `kode` varchar(6) NOT NULL,
  `siswa` varchar(20) NOT NULL,
  `ujian` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `token`
--

INSERT INTO `token` (`kode`, `siswa`, `ujian`, `tanggal`, `status`) VALUES
('2068IY', '288064', 3, '2023-01-29 10:59:41', 0),
('ZA6L2H', '289064', 3, '2023-01-29 10:59:41', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ujian`
--

CREATE TABLE `ujian` (
  `no` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `kelas` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `waktu` int(11) NOT NULL,
  `expired` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ujian`
--

INSERT INTO `ujian` (`no`, `keterangan`, `kelas`, `status`, `waktu`, `expired`) VALUES
(3, 'UTS GASAL Dasar Jaringan 2023/2024', 1, 0, 90, NULL),
(4, 'UTS GASAL Dasar Desain Grafis 2023/2024', 1, 0, 90, NULL),
(5, 'UTS GASAL komputer Jaringan 2023/2024', 1, 0, 90, NULL),
(6, 'UTS GASAL Pemrograman Dasar 2023/2024', 1, 0, 90, NULL),
(7, 'UTS GASAL Sistem Komputer 2023/2024', 1, 0, 90, NULL),
(8, 'UTS GASAL Dasar Jaringan 2022/2023', 2, 0, 90, NULL),
(9, 'UTS GASAL Dasar Desain Grafis 2023/2024', 2, 0, 90, NULL),
(10, 'UTS GASAL Komputer Jaringan 2023/2024', 2, 0, 90, NULL),
(11, 'UTS GASAL Pemrograman Dasar 2023/2024', 2, 0, 90, NULL),
(12, 'UTS GASAL Sistem Komputer 2023/2024', 2, 0, 90, NULL),
(13, 'UTS GASAL Dasar Jaringan 2023/2024', 3, 0, 90, NULL),
(14, 'UTS GASAL Dasar Desain Grafis 2023/2024', 3, 0, 90, NULL),
(15, 'UTS GASAL Komputer Jaringan 2023/2024', 3, 0, 90, NULL),
(16, 'UTS GASAL Pemrograman Dasar 2023/2024', 3, 0, 90, NULL),
(17, 'UTS GASAL Sistem Komputer 2023/2024', 3, 0, 90, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `acaksoal`
--
ALTER TABLE `acaksoal`
  ADD PRIMARY KEY (`no`),
  ADD KEY `fk_as_u` (`ujian`),
  ADD KEY `fk_as_s` (`soal`),
  ADD KEY `fk_as_ss` (`siswa`);

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`no`),
  ADD KEY `fkjs` (`soal`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `nilai_siswa`
--
ALTER TABLE `nilai_siswa`
  ADD PRIMARY KEY (`no`),
  ADD KEY `fk_ns` (`siswa`),
  ADD KEY `fk_nd_u` (`ujian`);

--
-- Indeks untuk tabel `riwayat_jawaban`
--
ALTER TABLE `riwayat_jawaban`
  ADD PRIMARY KEY (`no`),
  ADD KEY `fk_rj_s` (`soal`),
  ADD KEY `fk_rj_j` (`jawaban`),
  ADD KEY `fk_rj_w` (`siswa`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`),
  ADD KEY `fk_s_k` (`kelas`);

--
-- Indeks untuk tabel `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`no`),
  ADD KEY `fksu` (`ujian`);

--
-- Indeks untuk tabel `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `fk_tt_s` (`siswa`),
  ADD KEY `fk_tt_u` (`ujian`);

--
-- Indeks untuk tabel `ujian`
--
ALTER TABLE `ujian`
  ADD PRIMARY KEY (`no`),
  ADD KEY `fku_k` (`kelas`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `acaksoal`
--
ALTER TABLE `acaksoal`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT untuk tabel `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=931;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `nilai_siswa`
--
ALTER TABLE `nilai_siswa`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `riwayat_jawaban`
--
ALTER TABLE `riwayat_jawaban`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `soal`
--
ALTER TABLE `soal`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT untuk tabel `ujian`
--
ALTER TABLE `ujian`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `acaksoal`
--
ALTER TABLE `acaksoal`
  ADD CONSTRAINT `fk_as_s` FOREIGN KEY (`soal`) REFERENCES `soal` (`no`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_as_ss` FOREIGN KEY (`siswa`) REFERENCES `siswa` (`nis`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_as_u` FOREIGN KEY (`ujian`) REFERENCES `ujian` (`no`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `soal`
--
ALTER TABLE `soal`
  ADD CONSTRAINT `fk_s_u` FOREIGN KEY (`ujian`) REFERENCES `ujian` (`no`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `fk_tt_s` FOREIGN KEY (`siswa`) REFERENCES `siswa` (`nis`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tt_u` FOREIGN KEY (`ujian`) REFERENCES `ujian` (`no`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
