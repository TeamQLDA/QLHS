-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2017 at 06:30 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlyhocsinh`
--

-- --------------------------------------------------------

--
-- Table structure for table `dangnhap`
--

CREATE TABLE `dangnhap` (
  `username` text NOT NULL,
  `password` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dangnhap`
--

INSERT INTO `dangnhap` (`username`, `password`, `id`) VALUES
('admin', 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `diem`
--

CREATE TABLE `diem` (
  `id` int(11) NOT NULL,
  `mahs` varchar(10) NOT NULL,
  `mamh` varchar(10) NOT NULL,
  `diem` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

--
-- Dumping data for table `diem`
--

INSERT INTO `diem` (`id`, `mahs`, `mamh`, `diem`) VALUES
(1, 'hs00101', 'MLS', 5),
(2, 'hs00101', 'MLS', 5),
(3, 'hs00101', 'MLS', 5),
(4, 'hs00101', 'MLS', 5),
(5, 'hs00101', 'MLS', 5),
(6, 'hs00101', 'MLS', 5),
(8, 'hs00101', 'MLS', 5),
(9, 'hs00101', 'MLS', 5),
(10, 'hs00101', 'MLS', 5);

-- --------------------------------------------------------

--
-- Table structure for table `hocsinh`
--

CREATE TABLE `hocsinh` (
  `mahs` varchar(10) NOT NULL,
  `tenhs` varchar(255) NOT NULL,
  `malop` varchar(10) NOT NULL,
  `gioitinh` varchar(255) NOT NULL,
  `dantoc` varchar(255) NOT NULL,
  `namsinh` date NOT NULL,
  `noisinh` varchar(255) NOT NULL,
  `quequan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

--
-- Dumping data for table `hocsinh`
--

INSERT INTO `hocsinh` (`mahs`, `tenhs`, `malop`, `gioitinh`, `dantoc`, `namsinh`, `noisinh`, `quequan`) VALUES
('hs00101', 'Lê Bảo Cường', 'L2A', 'Nam', 'Kinh', '2011-01-02', 'Bình Định', 'Bình Định'),
('hs00201', 'Nguyễn Thị Lệ Thu', 'L3B', 'Nữ', 'Kinh', '2010-04-04', 'Bình Định', 'Bình Định'),
('hs003', 'đặng hồng đông', 'L3B', 'nam', 'kinh', '2017-04-07', 'gia lai', 'việt nam'),
('HS004', 'tuấn', 'L3B', 'nam', 'kinh', '0000-00-00', 'gia lai', 'việt'),
('HS006', 'đặng tuấn cường', 'L3B', 'nam', 'kinh', '2017-04-06', 'Việt Nam', 'Thái Bfinh'),
('nam', 'nam', 'L3B', 'nam', 'kinh', '2017-04-06', 'gia lai', 'việt');

-- --------------------------------------------------------

--
-- Table structure for table `lop`
--

CREATE TABLE `lop` (
  `malop` varchar(10) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gvcn` varchar(255) NOT NULL,
  `loptruong` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

--
-- Dumping data for table `lop`
--

INSERT INTO `lop` (`malop`, `soluong`, `gvcn`, `loptruong`) VALUES
('L2A', 32, 'Nguyễn Thị Diễm', 'Trần Phúc Huy'),
('L3B', 35, 'Nguyễn Minh Lâm', 'Trần Lâm Anh');

-- --------------------------------------------------------

--
-- Table structure for table `monhoc`
--

CREATE TABLE `monhoc` (
  `mamh` varchar(10) NOT NULL,
  `tenmh` varchar(255) NOT NULL,
  `sotiec` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

--
-- Dumping data for table `monhoc`
--

INSERT INTO `monhoc` (`mamh`, `tenmh`, `sotiec`) VALUES
('MLS', 'Lịch Sử', 40),
('MT', 'toán', 40);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dangnhap`
--
ALTER TABLE `dangnhap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diem`
--
ALTER TABLE `diem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mahs` (`mahs`),
  ADD KEY `mamh` (`mamh`);

--
-- Indexes for table `hocsinh`
--
ALTER TABLE `hocsinh`
  ADD PRIMARY KEY (`mahs`),
  ADD KEY `malop` (`malop`),
  ADD KEY `malop_2` (`malop`);

--
-- Indexes for table `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`malop`);

--
-- Indexes for table `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`mamh`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dangnhap`
--
ALTER TABLE `dangnhap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `diem`
--
ALTER TABLE `diem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `diem`
--
ALTER TABLE `diem`
  ADD CONSTRAINT `diem_ibfk_1` FOREIGN KEY (`mahs`) REFERENCES `hocsinh` (`mahs`),
  ADD CONSTRAINT `diem_ibfk_2` FOREIGN KEY (`mamh`) REFERENCES `monhoc` (`mamh`);

--
-- Constraints for table `hocsinh`
--
ALTER TABLE `hocsinh`
  ADD CONSTRAINT `hocsinh_ibfk_1` FOREIGN KEY (`malop`) REFERENCES `lop` (`malop`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
