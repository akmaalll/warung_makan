-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2023 at 12:33 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tes`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$AIy0X1Ep6alaHDTofiChGeqq7k/d1Kc8vKQf1JZo0mKrzkkj6M626');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `kode_customer` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `telp` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`kode_customer`, `nama`, `email`, `username`, `password`, `telp`) VALUES
('C0001', 'akmal rayadil fitrah', 'akmal@gmail.com', 'akmal', '$2y$10$wT/EXvGQkzhkAst75orl9u/o3gCvqZME.1Whki8EADk569wSKnXEW', '098765432'),
('C0002', 'akmal rayadil fitrah', 'akmalrayadilfitrah@gmail.com', 'qwertyui', '$2y$10$PRKJ9TOtax8OjSKWfhv24.8R7a0gjrIpwkC7zz3phvUoEB2mFdfk2', '098765432'),
('C0003', '', 'alief@gmail.com', 'akml', '$2y$10$NDEEx1daikl2/De4UFK6BO81kNwFPnqxG32VXL6Ip0yOlEgTe8PvO', '098765432');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `kode_customer` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id_keranjang`, `kode_customer`, `kode_produk`, `nama_produk`, `qty`, `harga`) VALUES
(16, 'C0003', 'P0002', 'Maryam', 5, 15000),
(17, 'C0003', 'P0003', 'Kue tart coklat', 2, 100000),
(24, 'C0005', 'P0002', 'Maryam', 1, 15000),
(29, 'C0001', 'P0001', 'Burger', 1, 15000),
(35, 'C0002', 'P0001', 'Burger', 3, 15000),
(36, 'C0002', 'P0002', 'pizza', 1, 900000);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `kode_produk` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`kode_produk`, `nama`, `image`, `deskripsi`, `harga`) VALUES
('P0001', 'Burger', '64ad8a4d26c63.jpg', 'Enak\r\n			', 15000),
('P0002', 'pizza', '64ae9d1a55545.jpg', 'askjdad\r\n			', 900000),
('P0003', 'asdadjn', '64ae9d3d7b378.jpg', 'kjadsj\r\n			', 90000),
('P0004', 'asjkdkj', '64ae9d4a24827.jpg', 'shadbhabds\r\n			', 277777),
('P0005', 'asdadan', '64ae9d5aa13bb.png', 'asdkads\r\n			', 111),
('P0006', 'asda', '64ae9d6a32240.jpg', 'sadnaj\r\n			', 1222);

-- --------------------------------------------------------

--
-- Table structure for table `produksi`
--

CREATE TABLE `produksi` (
  `id_order` int(11) NOT NULL,
  `invoice` varchar(200) NOT NULL,
  `kode_customer` varchar(200) NOT NULL,
  `kode_produk` varchar(200) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  `tanggal` date NOT NULL,
  `kota` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `kode_pos` varchar(200) NOT NULL,
  `terima` varchar(200) NOT NULL,
  `tolak` varchar(200) NOT NULL,
  `cek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produksi`
--

INSERT INTO `produksi` (`id_order`, `invoice`, `kode_customer`, `kode_produk`, `nama_produk`, `qty`, `harga`, `status`, `tanggal`, `kota`, `alamat`, `kode_pos`, `terima`, `tolak`, `cek`) VALUES
(17, 'INV0001', 'C0001', 'P0002', 'Maryam', 1, 15000, 'Pesanan Baru', '2323-07-11', 'asdasd', 'asda', '9000', '2', '1', 1),
(18, 'INV0002', 'C0001', 'P0002', 'Maryam', 1, 15000, '0', '2323-07-11', 'sada', 'sada', '222', '1', '0', 0),
(19, 'INV0003', 'C0001', 'P0003', 'Kue tart coklat', 1, 100000, '0', '2323-07-11', 'asdad', 'asda', '213', '1', '0', 0),
(20, 'INV0004', 'C0001', 'P0003', 'Kue tart coklat', 1, 100000, 'Pesanan Baru', '2323-07-11', 'asda', 'sdsad', '211', '2', '1', 0),
(21, 'INV0005', 'C0002', 'P0001', 'Burger', 2, 15000, 'Pesanan Baru', '2323-07-12', 'wqeqwe', 'ewqe', '123', '2', '1', 0),
(22, 'INV0006', 'C0002', 'P0001', 'Burger', 1, 15000, '0', '2323-07-12', 'asd', 'ad', '900', '1', '0', 0),
(23, 'INV0007', 'C0002', 'P0006', 'asda', 1, 1222, '0', '2323-07-12', 'asd', 'sad', '888', '1', '0', 0),
(24, 'INV0007', 'C0002', 'P0001', 'Burger', 1, 15000, '0', '2323-07-12', 'asd', 'sad', '888', '1', '0', 0),
(25, 'INV0007', 'C0002', 'P0002', 'pizza', 1, 900000, '0', '2323-07-12', 'asd', 'sad', '888', '1', '0', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`kode_customer`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`kode_produk`);

--
-- Indexes for table `produksi`
--
ALTER TABLE `produksi`
  ADD PRIMARY KEY (`id_order`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `produksi`
--
ALTER TABLE `produksi`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
