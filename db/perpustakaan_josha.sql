-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jul 2023 pada 06.01
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
-- Database: `perpustakaan_josha`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(10) NOT NULL,
  `kode_anggota` char(10) NOT NULL,
  `nama_anggota` varchar(50) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `kode_anggota`, `nama_anggota`, `pekerjaan`, `alamat`, `no_telp`) VALUES
(1, 'J002', 'Jordi Amat', 'Wirausaha', 'Pajangan', '085146284527'),
(2, 'J003', 'Mamat', 'Tambang', 'Sewon', '089952347135'),
(3, 'J004', 'Rozaq', 'Siswa', 'Bantul', '085678725623'),
(4, 'J005', 'Fikri', 'Guru', 'Sleman', '085995448141'),
(5, 'J006', 'Ilham', 'Siswa', 'Demak', '081166554433');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `kode_buku` char(5) NOT NULL,
  `judul_buku` varchar(50) NOT NULL,
  `penulis_buku` varchar(50) NOT NULL,
  `tahun_penerbit` char(4) NOT NULL,
  `stock_buku` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `kode_buku`, `judul_buku`, `penulis_buku`, `tahun_penerbit`, `stock_buku`) VALUES
(1, 'A001', 'Si Kancil', 'Edyas wiguna', '2013', 18),
(2, 'A002', 'Si Juki', 'Johness', '2015', 15),
(3, 'A003', 'Tips Jitu Sukses', 'Johsa', '2020', 10),
(4, 'A004', 'Kisah Horror', 'Risma', '2017', 13),
(5, 'A005', 'Kamus Bahasa Inggris', 'John Em Col', '2018', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_anggota` int(10) NOT NULL,
  `kode_anggota` char(5) NOT NULL,
  `nama_anggota` varchar(50) NOT NULL,
  `jumlah_buku` int(5) NOT NULL,
  `masa_peminjaman` int(5) NOT NULL,
  `kondisi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_anggota`, `kode_anggota`, `nama_anggota`, `jumlah_buku`, `masa_peminjaman`, `kondisi`) VALUES
(1, 'J0572', 'Jordi Amat', 2, 5, 'Baik'),
(2, 'J0573', 'Mamat', 1, 7, 'Baik'),
(3, 'J0574', 'Rozaq', 3, 3, 'Baik'),
(4, 'J0575', 'Fikri', 3, 3, 'Baik'),
(5, 'J0576', 'Ilham', 2, 10, 'Baik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `kode_petugas` char(5) NOT NULL,
  `nama_petugas` varchar(50) NOT NULL,
  `no_telp` text NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `kode_petugas`, `nama_petugas`, `no_telp`, `jabatan`, `alamat`) VALUES
(1, 'B001', 'Jono Indro', '089953457363', 'Anggota', 'Kota Gede'),
(2, 'B002', 'Coverd', '085349173463', 'Manager', 'Bantul'),
(3, 'B003', 'Syaiful', '085634738472', 'Anggota', 'Godean'),
(4, 'B004', 'Rodri Putra', '085736548422', 'Anggota', 'Kraton'),
(5, 'B005', 'Usman Affan', '089924685215', 'Anggota', 'Bantul');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rak`
--

CREATE TABLE `rak` (
  `id_rak` int(11) NOT NULL,
  `kode_rak` varchar(50) NOT NULL,
  `nama_rak` varchar(50) NOT NULL,
  `lokasi_rak` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `id_buku` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rak`
--

INSERT INTO `rak` (`id_rak`, `kode_rak`, `nama_rak`, `lokasi_rak`, `keterangan`, `id_buku`) VALUES
(1, 'R001', 'Rak Cerita', 'Area 2 Lantai 3', '', '1,2,3'),
(2, 'R002', 'Rak Majalah', 'Area 1 Lantai 1', 'Baik', '4,9'),
(3, 'R003', 'Rak Berita', 'Area 4 Lantai 1', 'Baik', '10,12'),
(4, 'R004', 'Rak Jurnal', 'Area 1 Lantai 2', 'Baik', '14,15'),
(5, 'R005', 'Rak Kamus	', 'Area 3 Lantai 2', 'Baik', '5,6,7');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `rak`
--
ALTER TABLE `rak`
  ADD PRIMARY KEY (`id_rak`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
