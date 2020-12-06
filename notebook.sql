-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2020 at 11:26 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_gejala`
--

CREATE TABLE `tb_gejala` (
  `id` int(5) NOT NULL,
  `G001` tinyint(1) DEFAULT NULL,
  `G002` tinyint(1) DEFAULT NULL,
  `G003` tinyint(1) DEFAULT NULL,
  `G004` tinyint(1) DEFAULT NULL,
  `G005` tinyint(1) DEFAULT NULL,
  `G006` tinyint(1) DEFAULT NULL,
  `G007` tinyint(1) DEFAULT NULL,
  `G008` tinyint(1) DEFAULT NULL,
  `G009` tinyint(1) DEFAULT NULL,
  `G010` tinyint(1) DEFAULT NULL,
  `G011` tinyint(1) DEFAULT NULL,
  `G012` tinyint(1) DEFAULT NULL,
  `G013` tinyint(1) DEFAULT NULL,
  `G014` tinyint(1) DEFAULT NULL,
  `G015` tinyint(1) DEFAULT NULL,
  `G016` tinyint(1) DEFAULT NULL,
  `G017` tinyint(1) DEFAULT NULL,
  `G018` tinyint(1) DEFAULT NULL,
  `G019` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_gejala`
--

INSERT INTO `tb_gejala` (`id`, `G001`, `G002`, `G003`, `G004`, `G005`, `G006`, `G007`, `G008`, `G009`, `G010`, `G011`, `G012`, `G013`, `G014`, `G015`, `G016`, `G017`, `G018`, `G019`) VALUES
(1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_gejala_1`
--

CREATE TABLE `tb_gejala_1` (
  `id` int(5) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `gejala` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_gejala_1`
--

INSERT INTO `tb_gejala_1` (`id`, `kode`, `gejala`) VALUES
(1, 'G001', 'Apakah layar tidak tampil gambar?'),
(2, 'G002', 'Menyala tapi keluar garis-garis vertikal'),
(3, 'G003', 'Tampak blk hitam,dan gambar tidak simetris/acak \r\n'),
(4, 'G004', 'Dihidupkan agak sulit \r\n'),
(5, 'G005', 'Batere tidak mau di cas/Mati total \r\n'),
(6, 'G006', 'Indikator charger nyala,setelah dicharger lampu indikator pada charger mati\r\n'),
(7, 'G007', 'Loading data/System lambat\r\n'),
(8, 'G008', 'Berbunyi tapi tidak normal\r\n'),
(9, 'G009', 'Tidak masuk windows\r\n'),
(10, 'G010', 'Belum sampai login windows sudah restart sendiri\r\n'),
(11, 'G011', 'CD Rom/CDRW/DVD Ram/ Floppy dis belum terinstalasi dgn baik\r\n'),
(12, 'G012', 'Driver CD Ram/CDRW/ DVD Ram belum terintalasi dgn baik\r\n'),
(13, 'G013', 'Sistem operasi tidak bekerja optimal\r\n'),
(14, 'G014', 'Tidak mau menbaca CD/DVD \r\n'),
(15, 'G015', 'Indikator CD/DVD OFF \r\n'),
(16, 'G016', 'Beberapa tuts tidak berfungsi\r\n'),
(17, 'G017', 'Keluar bunyi beep panjang pada saat laptop di nyalakanr\n'),
(18, 'G018', 'Cursor berjalan tidak stabil/bergerak sendiri\r\n'),
(19, 'G019', 'Kerusakan yang lebih parah :biasanya konslet dan ini menyebabkan notebook setelah booting,restart-restart terus\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kerusakan`
--

CREATE TABLE `tb_kerusakan` (
  `id` int(5) NOT NULL,
  `bagian` varchar(50) DEFAULT NULL,
  `solusi` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kerusakan`
--

INSERT INTO `tb_kerusakan` (`id`, `bagian`, `solusi`) VALUES
(1, 'Layar LCD', 'Pertama-tama silahkan anda matikan perangkat laptop anda dan kemudian cabut terlebih dahulu baterai yang terpasang pada laptop. 
Langkah berikutnya silahkan anda buka frame LCD laptop anda
Selanjutnya anda buka dan copot kabel-kabel yang terdapat pada laptop anda secara satu persatu
Langkah keempat silahkan anda periksa ada tidaknya kerusakan yang terjadi pada kabel dan inverter pada laptop tersebut
Langkah kelima periksa kembali kondisi inverter dan kemudian silahkan anda lepas
Langkah berikutnya gunakan magnet ukuran kecil dan silahkan dekatkan magnet tersebut dengan inverter dengan jarak 2 cm. Hal ini bertujuan untuk supaya terhindar dari muatan statis dan silahkan anda lakukan sebanyak 2 sampai 3 kali saja
Setelah itu silahkan anda lapisi inverter tersebut dengan solasi supaya PCB inverter menjadi lebih kuat
Selanjutnya silahkan anda terapkan kembali kabel-kabel konektor yang sudah anda lepas 
Selesai'),
(2, 'Motherboard/ icregulator', 'Langkah pertama lepas semua kabel power yang terhubung ke listrik, kabel data ke monitor, kabel keyboad/mouse, dan semua kabel yang terhubung ke CPU, kemudian lepas semua sekrup penutup cashing. Dalam keadaan casing terbuka silahkan anda lepaskan juga komponen-komponen lainnya, yaitu kabel tegangan dari power supply yang terhubung ke Motherboard, harddisk, floppy, hati-hati dalam pengerjaannya jangan terburu-buru. Begitu juga dengan Card yang menempel pada Mboard (VGA, Sound atau Card lainnya). Sekarang yang menempel pada cashing hanya MotherBoard saja. Silahkan anda periksa Motherboadnya dengan teliti, lihat Chip (IC), Elko, Transistor dan yang lainnya apakah ada yang terbakar.Jika tidak ada tanda-tanda komponen yang terbakar kemungkinan Motherboard masih bagus, tapi ada kalanya Mother board tidak jalan karena kerusakan pada program yang terdapat di BIOS.'),
(3, 'Hard Disk', 'Mencabut hard disk kamu yang terindikasi sedang bermasalah. Sambungkan hard disk ke komputer lain yang kondisinya masih normal. Selanjutnya, jalankan fitur Check Disk yang ada pada Windows untuk mencari kesalahan, file rusak, dan bad sector pada perangkat yang bisa menyebabkan masalah.'),
(4, 'FDD', 'Mengecek port usb di laptop, Memeriksa drive komputer, Cek menggunakan fitur windows, Menformat Flashdisk');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
