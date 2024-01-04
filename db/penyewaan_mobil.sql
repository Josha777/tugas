-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jan 2024 pada 03.02
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penyewaan_mobil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` int(11) NOT NULL,
  `merek` varchar(300) NOT NULL,
  `model` varchar(300) NOT NULL,
  `tahun_produksi` int(11) NOT NULL,
  `warna` varchar(300) NOT NULL,
  `nomor_plat` varchar(20) NOT NULL,
  `harga_sewa_perhari` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `merek`, `model`, `tahun_produksi`, `warna`, `nomor_plat`, `harga_sewa_perhari`) VALUES
(1, 'Toyota', 'Zenix Hybrid', 2022, 'Hitam', 'AB 2453 PL', '600000.00'),
(2, 'Toyota', 'Innova Reborn Facelift', 2023, 'Abu-abu', 'AB 2745 CB', '500000.00'),
(3, 'Toyota', 'Innova reborn', 2015, 'Hitam', 'AB 2473 RB', '600000.00'),
(4, 'Toyota', 'Fortuner VNT', 2012, 'Hitam', 'AB 4968 DB', '700000.00'),
(5, 'Toyota', 'Alphard 2014', 2014, 'Putih', 'AB 8853 ST', '2000000.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelangggan`
--

CREATE TABLE `pelangggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama` varchar(300) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `nomor_tlp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelangggan`
--

INSERT INTO `pelangggan` (`id_pelanggan`, `nama`, `alamat`, `nomor_tlp`) VALUES
(1, 'Seto arum', 'Imogiri selatan', '088163476183'),
(2, 'Yudha imanalo', 'Godean', '089963434182'),
(3, 'Rijad mayun', 'Kasihan', '085113476974'),
(4, 'Ade usman', 'Nitikan', '085663477155'),
(5, 'Bagus putra', 'Banguntapan', '085677423168');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_penyewaan` int(11) NOT NULL,
  `metode_pembayaran` varchar(300) NOT NULL,
  `tanggal_pembayaran` date NOT NULL,
  `jumlah_pembayaran` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_penyewaan`, `metode_pembayaran`, `tanggal_pembayaran`, `jumlah_pembayaran`) VALUES
(1, 1, 'Cash', '2023-10-01', '1200000.00'),
(2, 2, 'Cash', '2023-10-02', '1000000.00'),
(3, 3, 'Transfer Bank', '2023-10-02', '600000.00'),
(4, 4, 'Cash', '2023-10-03', '700000.00'),
(5, 5, 'E-Wallet', '2023-10-04', '4000000.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyewaan`
--

CREATE TABLE `penyewaan` (
  `id_penyewaan` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_mobil` int(11) NOT NULL,
  `tanggal_penyewaan` date NOT NULL,
  `tanggal_pengembalian` date NOT NULL,
  `total_biaya` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penyewaan`
--

INSERT INTO `penyewaan` (`id_penyewaan`, `id_pelanggan`, `id_mobil`, `tanggal_penyewaan`, `tanggal_pengembalian`, `total_biaya`) VALUES
(1, 1, 1, '2023-10-01', '2023-10-03', '1200000.00'),
(2, 2, 2, '2023-10-02', '2023-10-04', '1200000.00'),
(3, 3, 3, '2023-10-02', '2023-10-03', '600000.00'),
(4, 4, 4, '2023-10-03', '2023-10-04', '700000.00'),
(5, 5, 5, '2023-10-04', '2023-10-06', '4000000.00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indeks untuk tabel `pelangggan`
--
ALTER TABLE `pelangggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `vk_penyewaan` (`id_penyewaan`);

--
-- Indeks untuk tabel `penyewaan`
--
ALTER TABLE `penyewaan`
  ADD PRIMARY KEY (`id_penyewaan`),
  ADD KEY `vk_pelanggan` (`id_pelanggan`),
  ADD KEY `vk_mobil` (`id_mobil`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `vk_penyewaan` FOREIGN KEY (`id_penyewaan`) REFERENCES `penyewaan` (`id_penyewaan`);

--
-- Ketidakleluasaan untuk tabel `penyewaan`
--
ALTER TABLE `penyewaan`
  ADD CONSTRAINT `vk_mobil` FOREIGN KEY (`id_mobil`) REFERENCES `mobil` (`id_mobil`),
  ADD CONSTRAINT `vk_pelanggan` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelangggan` (`id_pelanggan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
