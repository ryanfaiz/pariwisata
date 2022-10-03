-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2022 at 04:16 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pariwisata`
--

-- --------------------------------------------------------

--
-- Table structure for table `tempat`
--

CREATE TABLE `tempat` (
  `id` int(10) NOT NULL,
  `provinsi` text NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kategori` text NOT NULL,
  `gmap` varchar(255) NOT NULL,
  `buka` time NOT NULL,
  `tutup` time NOT NULL,
  `gambar1` varchar(255) NOT NULL,
  `gambar2` varchar(255) NOT NULL,
  `gambar3` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tempat`
--

INSERT INTO `tempat` (`id`, `provinsi`, `nama`, `kategori`, `gmap`, `buka`, `tutup`, `gambar1`, `gambar2`, `gambar3`, `youtube`) VALUES
(1, 'Aceh', 'Pulau Kluang', 'Normal', 'https://maps.google.com/maps?q=Pulau%20Keluang&amp;t=&amp;z=13&amp;ie=UTF8&amp;iwloc=&amp;output=embed', '08:00:00', '18:00:00', 'https://pariwisata.netlify.app/Pulau-Keluang-1.webp', 'https://pariwisata.netlify.app/Pulau-Keluang-2.webp', 'https://pariwisata.netlify.app/Pulau-Keluang-3.webp', 'https://www.youtube-nocookie.com/embed/fC_dmtUrOa8'),
(2, 'Sumatera Utara', 'Air Terjun Sipiso-Piso', 'Normal', 'https://maps.google.com/maps?q=Air%20Terjun%20Sipiso-Piso&amp;t=&amp;z=13&amp;ie=UTF8&amp;iwloc=&amp;output=embed', '08:00:00', '18:00:00', 'https://pariwisata.netlify.app/Air-Terjun-Sipiso-Piso-1.webp', 'https://pariwisata.netlify.app/Air-Terjun-Sipiso-Piso-2.webp', 'https://pariwisata.netlify.app/Air-Terjun-Sipiso-Piso-3.webp', 'https://www.youtube-nocookie.com/embed/BVvRPEN1GdU'),
(3,'Sumatra Barat','Museum Adityawarman','Normal','https://maps.google.com/maps?q=Museum%20Adityawarman&t=&z=13&ie=UTF8&iwloc=&output=embed','08:00:00','18:00:00','https://pariwisata.netlify.app/Museum-Adityawarman-1.webp','https://pariwisata.netlify.app/Museum-Adityawarman-2.webp','https://pariwisata.netlify.app/Museum-Adityawarman-3.webp','https://www.youtube-nocookie.com/embed/ZH4J0GZ9KSs'),
(4,'Sumatra Selatan','Goa Putri','Normal','https://maps.google.com/maps?q=Goa%20Putri%20Padang%20Bindu%20Baturaja&t=&z=13&ie=UTF8&iwloc=&output=embed','08:00:00','18:00:00','https://pariwisata.netlify.app/Goa-Putri-1.webp','https://pariwisata.netlify.app/Goa-Putri-2.webp','https://pariwisata.netlify.app/Goa-Putri-3.webp','https://www.youtube-nocookie.com/embed/E61YQgXKeJQ'),
(5,'Bengkulu','Bukit Kaba','Normal','https://maps.google.com/maps?q=Bukit%20Kaba&t=&z=13&ie=UTF8&iwloc=&output=embed','08:00:00','18:00:00','https://pariwisata.netlify.app/Bukit-Kaba-1.webp','https://pariwisata.netlify.app/Bukit-Kaba-2.webp','https://pariwisata.netlify.app/Bukit-Kaba-3.webp','https://www.youtube-nocookie.com/embed/Mz56gqvowS4'),
(6,'Riau','Tanjung Senubing','Normal','https://maps.google.com/maps?q=Tanjung%20Senubing&t=&z=13&ie=UTF8&iwloc=&output=embed','08:00:00','18:00:00','https://pariwisata.netlify.app/Tanjung-Senumbing-1.webp','https://pariwisata.netlify.app/Tanjung-Senumbing-2.webp','https://pariwisata.netlify.app/Tanjung-Senumbing-3.webp','https://www.youtube-nocookie.com/embed/xI7hjzxTdn8'),
(7,'Kep. Riau','Anambas','Normal','https://maps.google.com/maps?q=Anambas&t=&z=13&ie=UTF8&iwloc=&output=embed','08:00:00','18:00:00','https://pariwisata.netlify.app/Anambas-1.webp','https://pariwisata.netlify.app/Anambas-2.webp','https://pariwisata.netlify.app/Anambas-3.webp','https://www.youtube-nocookie.com/embed/SVHH2yvupXk'),
(8,'Jambi','Danau Kaco','Normal','https://maps.google.com/maps?q=Danau%20Kaco&t=&z=13&ie=UTF8&iwloc=&output=embed','08:00:00','18:00:00','https://pariwisata.netlify.app/Danau-Kaco-1.webp','https://pariwisata.netlify.app/Danau-Kaco-2.webp ','https://pariwisata.netlify.app/Danau-Kaco-3.webp','https://www.youtube-nocookie.com/embed/YDhmpxr2g9k'),
(9,'Lampung','Air Terjun Curug Tujuh','Normal','https://maps.google.com/maps?q=Air%20Terjun%20Curug%20Tujuh&t=&z=13&ie=UTF8&iwloc=&output=embed','08:00:00','18:00:00','https://pariwisata.netlify.app/Air-Terjun-Curug-Tujuh-1.webp','https://pariwisata.netlify.app/Air-Terjun-Curug-Tujuh-2.webp','https://pariwisata.netlify.app/Air-Terjun-Curug-Tujuh-3.webp','https://www.youtube-nocookie.com/embed/I5X4UlgGtoc'),
(10,'Bangka Belitung','Pantai Batu Dinding','Normal','https://maps.google.com/maps?q=Pantai%20Batu%20Dinding&t=&z=13&ie=UTF8&iwloc=&output=embed','08:00:00','18:00:00','https://pariwisata.netlify.app/Pantai-Batu-Dinding-1.webp','https://pariwisata.netlify.app/Pantai-Batu-Dinding-2.webp','https://pariwisata.netlify.app/Pantai-Batu-Dinding-3.webp','https://www.youtube-nocookie.com/embed/ul0Qj_geZQ0'),
(11,'DKI Jakarta','Pulau Tidung','Normal','https://maps.google.com/maps?q=Pulau%20Tidung&t=&z=13&ie=UTF8&iwloc=&output=embed','08:00:00','18:00:00','https://pariwisata.netlify.app/Pulau-Tidung-1.webp','https://pariwisata.netlify.app/Pulau-Tidung-2.webp','https://pariwisata.netlify.app/Pulau-Tidung-3.webp','https://www.youtube-nocookie.com/embed/RWZFfwiTV4o'),
(12,'Banten','Ujong Kulon','Normal','https://maps.google.com/maps?q=Ujong%20Kulon&t=&z=13&ie=UTF8&iwloc=&output=embed','08:00:00','18:00:00','https://pariwisata.netlify.app/Ujung-Kulon-1.webp','https://pariwisata.netlify.app/Ujung-Kulon-2.webp','https://pariwisata.netlify.app/Ujung-Kulon-3.webp','https://www.youtube-nocookie.com/embed/aNrZFMVU1J8'),
(13,'Jawa Barat','Kawah Putih','Normal','https://maps.google.com/maps?q=Kawah%20Putih&t=&z=13&ie=UTF8&iwloc=&output=embed','08:00:00','18:00:00','https://pariwisata.netlify.app/Kawah-Putih-1.webp','https://pariwisata.netlify.app/Kawah-Putih-2.webp','https://pariwisata.netlify.app/Kawah-Putih-3.webp','https://www.youtube-nocookie.com/embed/OoSinKtNLVc'),
(14,'Jawa Tengah','Karimun Jawa','Normal','https://maps.google.com/maps?q=Kepulauan%20Karimunjawa&t=&z=13&ie=UTF8&iwloc=&output=embed','08:00:00','18:00:00','https://pariwisata.netlify.app/Karimun-Jawa-1.webp','https://pariwisata.netlify.app/Karimun-Jawa-2.webp','https://pariwisata.netlify.app/Karimun-Jawa-3.webp','https://www.youtube-nocookie.com/embed/HZVuxztLDwI'),
(15,'DI Yogyakarta','Pantai Ngetun','Normal','https://maps.google.com/maps?q=Pantai%20Ngetun&t=&z=13&ie=UTF8&iwloc=&output=embed','08:00:00','18:00:00','https://pariwisata.netlify.app/Pantai-Ngetun-1.webp','https://pariwisata.netlify.app/Pantai-Ngetun-2.webp','https://pariwisata.netlify.app/Pantai-Ngetun-3.webp','https://www.youtube-nocookie.com/embed/M1rzyzrtkd8'),
(16,'Jawa Timur','Bromo','Normal','https://maps.google.com/maps?q=Bromo&t=&z=13&ie=UTF8&iwloc=&output=embed','08:00:00','17:00:00','https://pariwisata.netlify.app/Bromo-1.webp','https://pariwisata.netlify.app/Bromo-2.webp','https://pariwisata.netlify.app/Bromo-3.webp','https://www.youtube-nocookie.com/embed/TEXBgNVt19Q'),
(17,'Bali','Pantai Kuta','Normal','https://maps.google.com/maps?q=Pantai%20Kuta&t=&z=13&ie=UTF8&iwloc=&output=embed','08:00:00','17:00:00','https://pariwisata.netlify.app/Pantai-Kuta-1.webp','https://pariwisata.netlify.app/Pantai-Kuta-2.webp','https://pariwisata.netlify.app/Pantai-Kuta-3.webp','https://www.youtube-nocookie.com/embed/u7EbLpNRP-0'),
(18,'NTT','Danau Kelimutu','Normal','https://maps.google.com/maps?q=Danau%20Kelimutu&t=&z=13&ie=UTF8&iwloc=&output=embed','08:00:00','17:00:00','https://pariwisata.netlify.app/Danau-Kelimutu-1.webp','https://pariwisata.netlify.app/Danau-Kelimutu-2.webp','https://pariwisata.netlify.app/Danau-Kelimutu-3.webp','https://www.youtube-nocookie.com/embed/_r3UWuU6i-c'),
(19,'NTB','Gili Trawangan','Normal','https://maps.google.com/maps?q=Gili%20Trawangan%20&t=&z=13&ie=UTF8&iwloc=&output=embed','08:00:00','17:00:00','https://pariwisata.netlify.app/Gili-Trawangan-1.webp','https://pariwisata.netlify.app/Gili-Trawangan-2.webp','https://pariwisata.netlify.app/Gili-Trawangan-3.webp','https://www.youtube-nocookie.com/embed/JQNIT-kX5LE'),
(20,'Kalimantan Utara','Kebun Raya Binusan','Normal','https://maps.google.com/maps?q=Kebun%20Raya%20Binusan&t=&z=13&ie=UTF8&iwloc=&output=embed','09:00:00','17:00:00','https://pariwisata.netlify.app/Kebun-Raya-Binusan-1.webp','https://pariwisata.netlify.app/Kebun-Raya-Binusan-2.webp','https://pariwisata.netlify.app/Kebun-Raya-Binusan-3.webp','https://www.youtube-nocookie.com/embed/rTfzlbmukTc'),
(21,'Kalimantan Barat','Bukit Penjamur Bengkayang','Normal','https://maps.google.com/maps?q=Bukit%20Penjamur%20Bengkayang&t=&z=13&ie=UTF8&iwloc=&output=embed','09:00:00','18:00:00','https://pariwisata.netlify.app/Bukit-Penjamur-Bengkayang-1.webp','https://pariwisata.netlify.app/Bukit-Penjamur-Bengkayang-2.webp','https://pariwisata.netlify.app/Bukit-Penjamur-Bengkayang-3.webp','https://www.youtube-nocookie.com/embed/P-ocfYqTg6E'),
(22,'Kalimantan Pusat','Air Terjun Gunung Rian','Normal','https://maps.google.com/maps?q=Air%20Terjun%20Gunung%20Rian&t=&z=13&ie=UTF8&iwloc=&output=embed','09:00:00','18:00:00','https://pariwisata.netlify.app/Air-Terjun-Gunung-Rian-1.webp','https://pariwisata.netlify.app/Air-Terjun-Gunung-Rian-2.webp','https://pariwisata.netlify.app/Air-Terjun-Gunung-Rian-3.webp','https://www.youtube-nocookie.com/embed/aUOliOJjdj4'),
(23,'Kalimantan Timur','Pulau Sangalaki','Normal','https://maps.google.com/maps?q=Pulau%20Sangalaki&t=&z=13&ie=UTF8&iwloc=&output=embed','09:00:00','15:00:00','https://pariwisata.netlify.app/Pulau-Sangalaki-1.webp','https://pariwisata.netlify.app/Pulau-Sangalaki-2.webp','https://pariwisata.netlify.app/Pulau-Sangalaki-3.webp','https://www.youtube-nocookie.com/embed/drmveMRcwmU'),
(24,'Sulawesi Utara','Bunaken','Normal','https://maps.google.com/maps?q=Bunaken&t=&z=13&ie=UTF8&iwloc=&output=embed','09:00:00','18:00:00','https://pariwisata.netlify.app/Bunaken-1.webp','https://pariwisata.netlify.app/Bunaken-2.webp','https://pariwisata.netlify.app/Bunaken-3.webp','https://www.youtube-nocookie.com/embed/3AGwLONO8B8'),
(25,'Sulawesi Barat','Pantai Palippis','Normal','https://maps.google.com/maps?q=Pantai%20Palippis&t=&z=13&ie=UTF8&iwloc=&output=embed','09:00:00','18:00:00','https://pariwisata.netlify.app/Pantai-Palippis-1.webp','https://pariwisata.netlify.app/Pantai-Palippis-2.webp','https://pariwisata.netlify.app/Pantai-Palippis-3.webp','https://www.youtube-nocookie.com/embed/m7KMOuB7TyM'),
(26,'Sulawesi Tengah','Pulau Togian','Normal','https://maps.google.com/maps?q=Pulau%20Togian&t=&z=13&ie=UTF8&iwloc=&output=embed','09:00:00','18:00:00','https://pariwisata.netlify.app/Pulau-Togian-1.webp','https://pariwisata.netlify.app/Pulau-Togian-2.webp','https://pariwisata.netlify.app/Pulau-Togian-3.webp','https://www.youtube-nocookie.com/embed/oLuMEkQHYLg'),
(27,'Gorontalo','Danau Limboto','Normal','https://maps.google.com/maps?q=Danau%20Limboto&t=&z=13&ie=UTF8&iwloc=&output=embed','09:00:00','18:00:00','https://pariwisata.netlify.app/Danau-Limboto-1.webp','https://pariwisata.netlify.app/Danau-Limboto-2.webp','https://pariwisata.netlify.app/Danau-Limboto-3.webp','https://www.youtube-nocookie.com/embed/tDZ5EHJWQKc'),
(28,'Sulawesi Tenggara','Taman Nasional Wakatobi','Normal','https://maps.google.com/maps?q=Balai%20Taman%20Nasional%20Wakatobi&t=&z=13&ie=UTF8&iwloc=&output=embed','09:00:00','18:00:00','https://pariwisata.netlify.app/Taman-Nasional-Wakatobi-1.webp','https://pariwisata.netlify.app/Taman-Nasional-Wakatobi-2.webp','https://pariwisata.netlify.app/Taman-Nasional-Wakatobi-3.webp','https://www.youtube-nocookie.com/embed/iflWPFAxlAs'),
(29,'Sulawesi Selatan','Pantai Losari','Normal','https://maps.google.com/maps?q=Pantai%20Losari&t=&z=13&ie=UTF8&iwloc=&output=embed','09:00:00','18:00:00','https://pariwisata.netlify.app/Pantai-Losari-1.webp','https://pariwisata.netlify.app/Pantai-Losari-2.webp','https://pariwisata.netlify.app/Pantai-Losari-3.webp','https://www.youtube-nocookie.com/embed/a9i8q3GTSdo'),
(30,'Maluku','Pantai Ora','Normal','https://maps.google.com/maps?q=Pantai%20Ora,%20Maluku&t=&z=13&ie=UTF8&iwloc=&output=embed','09:00:00','18:00:00','https://pariwisata.netlify.app/Pantai-Ora-1.webp','https://pariwisata.netlify.app/Pantai-Ora-2.webp','https://pariwisata.netlify.app/Pantai-Ora-3.webp','https://www.youtube-nocookie.com/embed/zCA4jTIBoCw'),
(31,'Maluku Utara','Pantai Luari','Normal','https://maps.google.com/maps?q=Pantai%20Luari,%20Maluku%20Utara&t=&z=13&ie=UTF8&iwloc=&output=embed','09:00:00','18:00:00','https://pariwisata.netlify.app/Pantai-Luari-1.webp','https://pariwisata.netlify.app/Pantai-Luari-2.webp','https://pariwisata.netlify.app/Pantai-Luari-3.webp','https://www.youtube-nocookie.com/embed/rsrcMgGnVVA'),
(32,'Papua Barat','Pulau Misool','Normal','https://maps.google.com/maps?q=Pulau%20Misool&t=&z=13&ie=UTF8&iwloc=&output=embed','09:00:00','18:00:00','https://pariwisata.netlify.app/Pulau-Misool-1.webp','https://pariwisata.netlify.app/Pulau-Misool-2.webp','https://pariwisata.netlify.app/Pulau-Misool-3.webp','https://www.youtube-nocookie.com/embed/-tHrQjm90FQ'),
(33,'Papua','Danau Sentani','Normal','https://maps.google.com/maps?q=Danau%20Sentani&t=&z=13&ie=UTF8&iwloc=&output=embed','09:00:00','18:00:00','https://pariwisata.netlify.app/Danau-Sentani-1.webp','https://pariwisata.netlify.app/Danau-Sentani-2.webp','https://pariwisata.netlify.app/Danau-Sentani-3.webp','https://www.youtube-nocookie.com/embed/RykaPU2TZ98'),
(34,'NTT','Pantai Koka','Spesial','https://maps.google.com/maps?q=Pantai%20Koka,%20NTT&t=&z=13&ie=UTF8&iwloc=&output=embed','09:00:00','18:00:00','https://pariwisata.netlify.app/Pantai-Koka-1.webp','https://pariwisata.netlify.app/Pantai-Koka-2.webp','https://pariwisata.netlify.app/Pantai-Koka-3.webp','https://www.youtube-nocookie.com/embed/5TDtJNFCePM'),
(35,'Bali','Desa Trunyan','Spesial','https://maps.google.com/maps?q=Desa%20Trunyan,%20Bali&t=&z=13&ie=UTF8&iwloc=&output=embed','09:00:00','18:00:00','https://pariwisata.netlify.app/Desa-Truyan-1.webp','https://pariwisata.netlify.app/Desa-Truyan-2.webp','https://pariwisata.netlify.app/Desa-Truyan-3.webp','https://www.youtube-nocookie.com/embed/bSdXUVAyn6E'),
(36,'Sulawesi Selatan','Benteng Rotterdam Makassar','Spesial','https://maps.google.com/maps?q=Benteng%20Rotterdam%20Makassar&t=&z=13&ie=UTF8&iwloc=&output=embed','09:00:00','18:00:00','https://pariwisata.netlify.app/Benteng-Rotterdam-Makassar-1.webp','https://pariwisata.netlify.app/Benteng-Rotterdam-Makassar-2.webp','https://pariwisata.netlify.app/Benteng-Rotterdam-Makassar-3.webp','https://www.youtube-nocookie.com/embed/HymSYlKK9Mc'),
(37,'Jawa Tengah','Punthuk Setumbu','Spesial','https://maps.google.com/maps?q=Punthuk%20Setumbu&t=&z=13&ie=UTF8&iwloc=&output=embed','09:00:00','18:00:00','https://pariwisata.netlify.app/Punthuk-Setumbu-1.webp','https://pariwisata.netlify.app/Punthuk-Setumbu-2.webp','https://pariwisata.netlify.app/Punthuk-Setumbu-3.webp','https://www.youtube-nocookie.com/embed/ZuwJ6lu5kR4'),
(38,'Jawa Tengah','Telaga Sunyi','Spesial','https://maps.google.com/maps?q=Telaga%20Sunyi,%20Purwokerto&t=&z=13&ie=UTF8&iwloc=&output=embed','09:00:00','18:00:00','https://pariwisata.netlify.app/Telaga-Sunyi-1.webp','https://pariwisata.netlify.app/Telaga-Sunyi-2.webp','https://pariwisata.netlify.app/Telaga-Sunyi-3.webp','https://www.youtube-nocookie.com/embed/5ku0RrX-JXE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tempat`
--
ALTER TABLE `tempat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tempat`
--
ALTER TABLE `tempat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
