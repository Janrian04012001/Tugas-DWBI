-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Agu 2021 pada 18.29
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `CustNo` varchar(8) NOT NULL,
  `CustName` varchar(30) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Internal` char(1) NOT NULL,
  `Contact` varchar(35) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `City` varchar(30) NOT NULL,
  `State` varchar(2) NOT NULL,
  `Zip` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`CustNo`, `CustName`, `Address`, `Internal`, `Contact`, `Phone`, `City`, `State`, `Zip`) VALUES
('C100', 'Football', 'Box 352200', 'Y', 'Mary Manager', '6857100', 'Boulder', 'CO', '80309'),
('C101', 'Mens Basketball', 'Box 352400', 'Y', 'Sally', '5431700', 'Boulder', 'CO', '80309'),
('C102', 'Baseball', 'Box 352020', 'Y', 'Bill Baseball', '5431234', 'Boulder', 'CO', '80309'),
('C103', 'Womens Softball', 'Box 351200', 'Y', 'Sue Softball', '5434321', 'Boulder', 'CO', '80309'),
('C104', 'Hig School', '123', 'N', 'Coach Bob', '4441234', 'Louisville', 'CO', '80027');

-- --------------------------------------------------------

--
-- Struktur dari tabel `facility`
--

CREATE TABLE `facility` (
  `FacNo` varchar(8) NOT NULL,
  `FacName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `facility`
--

INSERT INTO `facility` (`FacNo`, `FacName`) VALUES
('F102', 'Baseball field'),
('F101', 'Basketball arena'),
('F100', 'Football stadium'),
('F103', 'Recreation room');

-- --------------------------------------------------------

--
-- Struktur dari tabel `location`
--

CREATE TABLE `location` (
  `LocNo` varchar(8) NOT NULL,
  `FacNo` varchar(8) NOT NULL,
  `LocName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `location`
--

INSERT INTO `location` (`LocNo`, `FacNo`, `LocName`) VALUES
('L100', 'F100', 'Locker room'),
('L103', 'F101', 'Locker room');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustNo`);

--
-- Indeks untuk tabel `facility`
--
ALTER TABLE `facility`
  ADD PRIMARY KEY (`FacNo`),
  ADD UNIQUE KEY `Unique_FacName` (`FacName`);

--
-- Indeks untuk tabel `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`FacNo`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `FK_FACNO` FOREIGN KEY (`FacNo`) REFERENCES `facility` (`FacNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
