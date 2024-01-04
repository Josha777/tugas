-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jan 2024 pada 03.03
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
-- Database: `dbindomaret`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `stock` int(11) NOT NULL,
  `harga` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `stock`, `harga`) VALUES
(1, 'Cornetto blck&wh 82', 45, '5000.00'),
(2, 'Walls pp cho lava 56', 70, '3000.00'),
(3, 'Indomilk banana 190', 35, '4900.00'),
(4, 'Cimory yoghrt mix250', 50, '9300.00'),
(5, 'F/magic spry lemn600', 57, '38500.00'),
(6, 'her\'s/p cnmroll 20\'s', 42, '13300.00'),
(7, 'Sedap mie soto 75gr', 67, '2300.00'),
(8, 'Rinso det.mtc frnt 3', 90, '93000.00'),
(9, 'Inaco mangga 350ml', 50, '7200.00'),
(10, 'Indomie grg s.mth 85', 80, '2300.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_toko`
--

CREATE TABLE `data_toko` (
  `id_toko` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` text NOT NULL,
  `kode_pos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_toko`
--

INSERT INTO `data_toko` (`id_toko`, `alamat`, `no_telp`, `kode_pos`) VALUES
(1, 'Jl.durian,pekanbaru', '08117073406', 28127);

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nama_karya` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` text NOT NULL,
  `shift` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama_karya`, `alamat`, `no_telp`, `shift`) VALUES
(1, 'Maya', 'Jl.cucut,pekanbaru', '08567673516', 1),
(2, 'Waryo', 'Jl.bawal,pekanbaru', '08567078987', 2),
(3, 'Michel', 'Jl.tenggiri,pekanbaru', '08955024567', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat`, `no_telp`) VALUES
(1, 'Bukori', 'Jl.selais,pekanbaru', '08234764237'),
(2, 'Sutris', 'Jl.manggis,pekanbaru', '08767834621');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `voucher_1` decimal(10,2) NOT NULL,
  `voucher_2` decimal(10,2) NOT NULL,
  `voucher_3` decimal(10,2) NOT NULL,
  `metode_pembayaran` varchar(50) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `voucher_1`, `voucher_2`, `voucher_3`, `metode_pembayaran`, `total`) VALUES
(1, '1500.00', '10600.00', '3400.00', 'Non tunai', '58500.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_barang`
--

CREATE TABLE `transaksi_barang` (
  `id` int(11) NOT NULL,
  `id_toko` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah_barang` int(11) NOT NULL,
  `id_pembayaran` int(11) NOT NULL,
  `tgl_transaksi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi_barang`
--

INSERT INTO `transaksi_barang` (`id`, `id_toko`, `id_transaksi`, `id_karyawan`, `id_pelanggan`, `id_barang`, `jumlah_barang`, `id_pembayaran`, `tgl_transaksi`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, '2021-11-05'),
(2, 1, 1, 1, 1, 2, 1, 1, '2021-11-05'),
(3, 1, 1, 1, 1, 3, 1, 1, '2021-11-05'),
(4, 1, 1, 1, 1, 4, 1, 1, '2021-11-05'),
(5, 1, 1, 1, 1, 5, 1, 1, '2021-11-05'),
(6, 1, 1, 1, 1, 6, 1, 1, '2021-11-05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `voucher`
--

CREATE TABLE `voucher` (
  `id_voucher` int(11) NOT NULL,
  `nama_voucher` varchar(50) NOT NULL,
  `jenis_voucher` varchar(50) NOT NULL,
  `tanggal_exp` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `voucher`
--

INSERT INTO `voucher` (`id_voucher`, `nama_voucher`, `jenis_voucher`, `tanggal_exp`) VALUES
(1, 'Vc hith', 'Shopeepay', '2021-12-15'),
(2, 'Vc force magic', 'Marketama ind', '2022-01-11'),
(3, 'Vc hers protex', 'Sayap mas uta', '2021-12-31');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `data_toko`
--
ALTER TABLE `data_toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indeks untuk tabel `transaksi_barang`
--
ALTER TABLE `transaksi_barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Barang` (`id_barang`),
  ADD KEY `FK_Karyawan` (`id_karyawan`),
  ADD KEY `FK_Pembayaran` (`id_pembayaran`),
  ADD KEY `FK_Pelanggan` (`id_pelanggan`);

--
-- Indeks untuk tabel `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id_voucher`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `transaksi_barang`
--
ALTER TABLE `transaksi_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `transaksi_barang`
--
ALTER TABLE `transaksi_barang`
  ADD CONSTRAINT `FK_Barang` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Karyawan` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyawan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Pelanggan` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`),
  ADD CONSTRAINT `FK_Pembayaran` FOREIGN KEY (`id_pembayaran`) REFERENCES `pembayaran` (`id_pembayaran`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
