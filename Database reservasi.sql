-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Feb 2024 pada 08.48
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservasi`
--

CREATE TABLE `reservasi` (
  `no_reservasi` varchar(12) NOT NULL,
  `tgl_reservasi` datetime NOT NULL,
  `tgl_checkin` datetime NOT NULL,
  `tgl_checkout` datetime NOT NULL,
  `id_tamu` varchar(8) NOT NULL,
  `jumlah_hari` int(11) NOT NULL,
  `jumlah_kamar` int(11) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `reservasi`
--

INSERT INTO `reservasi` (`no_reservasi`, `tgl_reservasi`, `tgl_checkin`, `tgl_checkout`, `id_tamu`, `jumlah_hari`, `jumlah_kamar`, `jumlah_bayar`, `status`) VALUES
('201807090002', '2018-07-09 01:10:10', '2018-07-09 00:00:00', '2018-07-11 14:00:00', 'T0000001', 2, 1, 420000, 'Checkout'),
('201807090003', '2018-07-09 01:11:37', '2018-07-09 14:00:00', '2018-07-17 12:00:00', 'T0000002', 8, 1, 1680000, 'Checkout'),
('201807090004', '2018-07-09 15:00:23', '2018-07-09 14:00:00', '2018-07-10 12:00:00', 'T0000002', 1, 1, 120000, 'Checkout'),
('202309250001', '2023-09-25 20:57:36', '2023-09-25 14:00:00', '2023-09-26 12:00:00', 'T0000003', 1, 1, 2500000, 'Checkin'),
('202309260001', '2023-09-26 06:36:58', '2023-09-26 14:00:00', '2023-09-28 12:00:00', 'T0000004', 2, 1, 5000000, 'Checkin'),
('202309260002', '2023-09-26 07:39:44', '2023-09-26 14:00:00', '2023-09-27 12:00:00', 'T0000006', 1, 1, 3500000, 'Checkout'),
('202309260003', '2023-09-26 10:57:03', '2023-09-26 14:00:00', '2023-09-27 12:00:00', 'T0000006', 1, 1, 2500000, 'Checkin'),
('202309260004', '2023-09-26 11:43:35', '2023-09-26 14:00:00', '2023-09-27 12:00:00', 'T0000007', 1, 1, 2500000, 'Booked');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `reservasi`
--
ALTER TABLE `reservasi`
  ADD PRIMARY KEY (`no_reservasi`),
  ADD KEY `id_tamu` (`id_tamu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
