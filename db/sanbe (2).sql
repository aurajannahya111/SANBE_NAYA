-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2023 at 03:47 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sanbe`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `no` int(11) NOT NULL,
  `no_ttp` varchar(30) NOT NULL,
  `tgl_terima_user` date NOT NULL,
  `no_bpb` varchar(30) NOT NULL,
  `no_bppb` varchar(30) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`no`, `no_ttp`, `tgl_terima_user`, `no_bpb`, `no_bppb`, `nik`, `nama_user`, `dept`, `jabatan`) VALUES
(0, 'A1001', '2023-01-13', 'B001', 'BA002', '12345', 'AURA', 'CHEPA', 'HRD'),
(1, 'BR002', '2023-01-16', '001-Y2-10-00001', '001234-BN666-908', '1010', 'aura', 'person', 'HRD');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `password` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `password`) VALUES
('sanbe@gmail.com', '111'),
('sanbe@gmail.com', '111');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `no` int(11) NOT NULL,
  `no_tts` varchar(30) NOT NULL,
  `tgl_terima_user` date NOT NULL,
  `it_melakukan` varchar(50) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `detil_pekerjaan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
