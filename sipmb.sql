-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2019 at 01:35 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ta_sipmb`
--

-- --------------------------------------------------------

--
-- Table structure for table `calon_mahasiswa`
--

CREATE TABLE `calon_mahasiswa` (
  `no_pendaftaran` int(50) NOT NULL,
  `id_informasi_pendaftaran` int(50) NOT NULL,
  `id_institusi_pendidikan` int(50) NOT NULL,
  `id_jurusan` int(50) NOT NULL,
  `identitas` varchar(30) NOT NULL,
  `no_identitas` int(30) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `agama` varchar(15) NOT NULL,
  `golongan_darah` varchar(5) NOT NULL,
  `kewarganegaraan` varchar(20) NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `kabupaten` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `kode_pos` int(6) NOT NULL,
  `no_telp_rumah` varchar(14) NOT NULL,
  `no_hp` varchar(14) NOT NULL,
  `email` varchar(50) NOT NULL,
  `jumlah_saudara` int(20) NOT NULL,
  `anak` int(5) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `agama_ayah` varchar(15) NOT NULL,
  `pendidikan_ayah` int(50) NOT NULL,
  `pekerjaan_ayah` int(50) NOT NULL,
  `alamat_ayah` text NOT NULL,
  `no_telp_ayah` varchar(14) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `agama_ibu` varchar(15) NOT NULL,
  `pendidikan_terakhir_ibu` varchar(50) NOT NULL,
  `pekerjaan_ibu` varchar(50) NOT NULL,
  `alamat_ibu` text NOT NULL,
  `no_telp_ibu` varchar(14) NOT NULL,
  `penghasilan_ortu` varchar(50) NOT NULL,
  `provinsi_sekolah` varchar(50) NOT NULL,
  `kabupaten_sekolah` varchar(50) NOT NULL,
  `kecamatan_sekolah` varchar(50) NOT NULL,
  `nama_sekolah` varchar(50) NOT NULL,
  `alamat_sekolah` text NOT NULL,
  `nilai_rata` varchar(6) NOT NULL,
  `tahun_lulus` date NOT NULL,
  `kelas_jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hasil_test`
--

CREATE TABLE `hasil_test` (
  `no_pendaftaran` int(50) NOT NULL,
  `nilai` int(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `informasi_pendaftaran`
--

CREATE TABLE `informasi_pendaftaran` (
  `id_informasi_pendaftaran` int(50) NOT NULL,
  `id_institusi_pendidikan` int(50) NOT NULL,
  `id_jurusan` int(50) NOT NULL,
  `judul` int(200) NOT NULL,
  `isi` text NOT NULL,
  `gelombang` int(5) NOT NULL,
  `tanggal_awal_pendaftaran` date NOT NULL,
  `tanggal_akhir_pendaftaran` date NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `institusi_pendidikan`
--

CREATE TABLE `institusi_pendidikan` (
  `id_institusi_pendidikan` int(50) NOT NULL,
  `nama_institusi_pendidikan` varchar(200) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `kabupaten` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `Akreditasi` varchar(5) NOT NULL,
  `logo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(50) NOT NULL,
  `id_institusi_pendidikan` int(50) NOT NULL,
  `nama_jurusan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(50) NOT NULL,
  `no_pendaftaran` int(50) NOT NULL,
  `tanggal_bayar` date NOT NULL,
  `jumlah_pemabayaran` int(50) NOT NULL,
  `foto_bukti_pembayaran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calon_mahasiswa`
--
ALTER TABLE `calon_mahasiswa`
  ADD PRIMARY KEY (`no_pendaftaran`),
  ADD KEY `id_institusi_pendidikan` (`id_institusi_pendidikan`),
  ADD KEY `id_informasi_pendaftaran` (`id_informasi_pendaftaran`),
  ADD KEY `id_institusi_pendidikan_2` (`id_institusi_pendidikan`),
  ADD KEY `id_jurusan` (`id_jurusan`);

--
-- Indexes for table `hasil_test`
--
ALTER TABLE `hasil_test`
  ADD KEY `no_pendaftaran` (`no_pendaftaran`);

--
-- Indexes for table `informasi_pendaftaran`
--
ALTER TABLE `informasi_pendaftaran`
  ADD PRIMARY KEY (`id_informasi_pendaftaran`),
  ADD KEY `id_institusi_pendidikan` (`id_institusi_pendidikan`);

--
-- Indexes for table `institusi_pendidikan`
--
ALTER TABLE `institusi_pendidikan`
  ADD PRIMARY KEY (`id_institusi_pendidikan`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`),
  ADD KEY `id_institusi_pendidikan` (`id_institusi_pendidikan`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `no_pendaftaran` (`no_pendaftaran`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `calon_mahasiswa`
--
ALTER TABLE `calon_mahasiswa`
  ADD CONSTRAINT `calon_mahasiswa_ibfk_1` FOREIGN KEY (`id_informasi_pendaftaran`) REFERENCES `informasi_pendaftaran` (`id_informasi_pendaftaran`);

--
-- Constraints for table `hasil_test`
--
ALTER TABLE `hasil_test`
  ADD CONSTRAINT `hasil_test_ibfk_1` FOREIGN KEY (`no_pendaftaran`) REFERENCES `calon_mahasiswa` (`no_pendaftaran`);

--
-- Constraints for table `informasi_pendaftaran`
--
ALTER TABLE `informasi_pendaftaran`
  ADD CONSTRAINT `informasi_pendaftaran_ibfk_1` FOREIGN KEY (`id_institusi_pendidikan`) REFERENCES `institusi_pendidikan` (`id_institusi_pendidikan`);

--
-- Constraints for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD CONSTRAINT `jurusan_ibfk_1` FOREIGN KEY (`id_institusi_pendidikan`) REFERENCES `institusi_pendidikan` (`id_institusi_pendidikan`);

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`no_pendaftaran`) REFERENCES `calon_mahasiswa` (`no_pendaftaran`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
