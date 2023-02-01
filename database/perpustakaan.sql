-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2023 at 12:10 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `judul` varchar(300) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `tahun_terbit` varchar(4) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `foto_sampul` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `kategori_id`, `judul`, `penulis`, `penerbit`, `tahun_terbit`, `isbn`, `foto_sampul`) VALUES
(3, 1, 'Aplikasi Praktis Asuhan Keperawatan Keluarga', 'Komang Ayu Heni', 'Sagung Seto', '2012', '978-602-867-404-1', 'null'),
(4, 1, 'A-Z Psikologi : Berbagai kumpulan topik Psikologi', 'Zainul Anwar', 'Andi Offset', '2012', '978-979-293-215-7', 'null'),
(5, 1, 'Bangsa gagal ; Mencari identitas kebangsaan', 'Nasruddin Anshoriy', 'LKiS', '2008', '978-979-128-365-6', 'null'),
(6, 1, 'Biografi Gus Dur ; The Authorized Biography of KH. Abdurrahman Wahid (Soft Cover)', 'Greg Barton', 'LKiS', '2011', '978-979-338-125-1', 'null'),
(7, 1, 'Buku Ajar Tumbuh Kembang Remaja & Permasalahanya', 'Soetjiningsih', 'Sagung Seto', '2004', '979-328-808-6', 'null'),
(8, 1, 'Cedera Kepala', 'M. Z. Arifin', 'Sagung Seto', '2013', '978-602-867-497-3', 'null'),
(9, 1, 'Dasar Dasar Uroginekologi', 'Pribakti B', 'Sagung Seto', '2011', '978-602-867-451-5', 'null'),
(10, 1, 'Etnografi Pengobatan; Praktik Budaya peramuan & sugesti komunitas adat Tau Taa Vana', 'Alie Humaedi', 'LKiS', '2016', '978-602-728-136-3', 'null'),
(11, 1, 'Hantu Digoel; Politik Pengamanan Politik Zaman Kolonial', 'Takashi Shiraishi', 'LKiS', '2001', '979-896-678-3', 'null'),
(12, 1, 'Islam Agama ramah perempuan; Pembelaan kiai pesantren', 'Husein Muhammad', 'LKiS', '2013', '979-338-171-X', 'null'),
(13, 1, 'Islam Jawa; Kesalehan Normatif Versus Kebatinan', 'Mark R. Woodward', 'LKiS', '2004', '979-896-636-8', 'null'),
(14, 1, 'Islam Pasar Keadilan; Artikulasi Lokal, Kapitalisme, dan Demokrasi', 'Robert W. Hefner', 'LKiS', '2013', '979-896-679-1', 'null'),
(15, 1, 'Islam Sasak ; Wetu telu versus waktu lima', 'Erni Budiwanti', 'LKiS', '2013', '979-896-651-1', 'null'),
(16, 1, 'Keanekaragaman klinik peny. Trofoblas gestasional', 'Djamhoer M', 'Sagung Seto', '2011', '978-602-867-468-3', 'null'),
(17, 1, 'Kesadaran Nasional ; dari kolonialisme sampai kemerdekaan (jilid 1)', 'Slamet Muljana', 'LKiS', '2008', '978-979-128-355-7', 'null'),
(18, 1, 'Kesadaran Nasional ; dari kolonialisme sampai kemerdekaan (jilid 2)', 'Slamet Muljana', 'LKiS', '2008', '978-979-128-357-1', 'null'),
(19, 1, 'Kesehjateraan Sosial', 'Isbandi Rukminto Adi', 'Rajagrafindo Persada', '2015', '978-979-769-600-9', 'null'),
(20, 1, 'Kolaborasi PHP 5 dan Mysql untuk pengembangan website + cd', 'Eko Priyo Utomo', 'Andi Offset', '2014', '978-979-294-344-3', 'null'),
(21, 1, 'Kontroversi Hakim Perempuan Pada Peradilan Islam di Negara Negara Muslim', 'Djamizah Muqoddas', 'LKiS', '2011', '978-979-255-344-4', 'null'),
(22, 1, 'Kuasa Wanita Jawa', 'Christina S Handayani', 'LKiS', '2011', '979-338-159-0', 'null'),
(23, 1, 'Kumpulan Undang undang Sistem peradilan Pidana', 'Lincon Arsyad', 'Andi Offset', '2007', '979-290-349-2', 'null'),
(24, 1, 'Langsung Praktik Komputerisasi Akuntansi Dengan MYOB', 'Wahana Komputer', 'Andi Offset', '2015', '978-979-295-172-1', 'null'),
(25, 1, 'Lembaga keuangan Islam', 'Nurul Huda', 'PRENADA MEDIA GRUP', '2015', '978-602-873-012-9', 'null'),
(26, 1, 'Makna Budaya Dalam Komunikasi Antar Budaya', 'Alo Liliweri', 'LKiS', '2009', '978-979-128-303-8', 'null'),
(27, 1, 'Manajemen Penerbitan Jurnal Ilmiah', 'Lukman S', 'Sagung Seto', '2012', '978-602-867-471-3', 'null'),
(28, 1, 'Menuju Puncak Kemegahan; Sejarah kerajaan Majapahit', 'Slamet Muljana', 'LKiS', '2012', '979-845-135-X', 'null'),
(29, 1, 'Metode Riset Bisnis Edisi II', 'Suliyanto', 'Andi Offset', '2009', '978-979-290-742-1', 'null'),
(30, 1, 'Metodologi Penelitian Bidang Kesehatan ED. 2', 'Moch. Imron TA', 'Sagung Seto', '2014', '978-602-271-037-0', 'null'),
(31, 1, 'Neo Patriotisme; Etika kekuasaan dalam kebdayaan jawa', 'Nasruddin Anshoriy', 'LKiS', '2008', '978-979-128-367-0', 'null'),
(32, 1, 'NU vis a vis Negara; Pencarian isi, bentuk dan makna', 'Andree Feillard', 'LKiS', '2013', '979-896-633-3', 'null'),
(33, 1, 'Otoritarianisme Hukum Islam ; Kritik atas hirearki teks al-kutub as-sittah', 'Muhammad Habibi Siregar', 'LKiS', '2014', '978-602-149-135-5', 'null'),
(34, 1, 'Otoritas Sunnah Non-Tasyri’iyyah menurut Yusuf Al-Qaradhawi', 'Tarmizi M. Jakfar', 'Ar-Ruzz Media', '2016', '978-979-254-840-2', 'null'),
(35, 1, 'Panduan Penatalaksanaan Kanker Solid Peraboi 2010', 'Tjakra Wibawa', 'Sagung Seto', '2010', '978-602-867-417-1', 'null'),
(36, 1, 'Patologi I (umum)', 'Sudarto Pringgoutomo', 'Sagung Seto', '2002', '979-328-803-5', 'null'),
(37, 1, 'Patologi Sosial I', 'Kartini Kartono', 'Sagung Seto', '2002', '979-328-803-5', 'null'),
(38, 1, 'Pengantar Cultural Studies : Sejarah, Pendekatan, Konseptual, & Isu Menuju Studi Budaya Kapitalisme lanjut', 'Sandi Suwardi Hasan', 'Ar-Ruzz Media', '2016', '978-979-254-856-3', 'null'),
(39, 1, 'Pengantar Studi Al-Quran : Teori dan Pendekatan', 'Munzir Hitami', 'LKiS', '2012', '978-979-255-380-2', 'null'),
(40, 1, 'Politik Media dan Pertarungan Wacana', 'Agus Sudibyo', 'LKiS', '2013', '979-949-233-5', 'null'),
(41, 1, 'Quick Reference Windows 8', 'Wahana Komputer', 'Andi Offset', '2013', '978-979-293-499-1', 'null'),
(42, 1, 'Rekam Jejak; Dokter pejuang & Pelopor kebangkitan Nasional', 'Nasruddin Anshoriy', 'LKiS', '2008', '978-979-128-361-8', 'null'),
(43, 1, 'Runtuhnya Kerajaan Hindu Jawa', 'Slamet Muljana', 'LKiS', '2007', '979-845-116-3', 'null'),
(44, 1, 'Sejarah Pendidikan Nasional : Dari masa klasik hingga modern', 'Muhammad Rifa’i', 'Ar-Ruzz Media', '2016', '978-979-254-823-5', 'null'),
(45, 1, 'Serangan Umum 1 Maret 1949 dalam keleidoskop Sejarah Perjuangan Mempertahankan Kemerdekaan Indonesia', 'Batara R. Hutagalung', 'LKiS', '2010', '978-979-128-394-6', 'null'),
(46, 1, 'Statistik Sosial; Teori dan aplikasi Program SPSS', 'Nanang Martono', 'Gava Media', '2010', '978-979-107-893-1', 'null'),
(47, 1, 'Step by Step Penanganan Kelainan Endokrinologi', 'Tono Djuwantono', 'Sagung Seto', '2012', '978-602-867-485-0', 'null'),
(48, 1, 'Strategi Bahasa Assembler + CD', 'Jason P', 'Gava Media', '2005', '979-346-964-1', 'null'),
(49, 1, 'Strategic Management', 'Sofjan Assauri', 'Rajagrafindo Persada', '2016', '978-979-769-632-0', 'null'),
(50, 1, 'Studi Filsafat 1 : Pembacaan atas tradisi islam kontemporer', 'Hassan Hanafi', 'LKiS', '2013', '978-602-080-901-4', 'null'),
(52, 1, 'Tan Malaka: Merajut Masyarakat dan pendidikan Indonesia yang Sosialistis', 'Syaifudin', 'Ar-Ruzz Media', '2016', '978-979-254-991-9', 'null'),
(54, 1, 'Tarekat Petani : Fenomena Tarekat Syattariyah Lokal', 'Nur Syam', 'LKiS', '2013', '978-979-167-765-3', 'null'),
(55, 1, 'Tata Boga Industri : Materi Kompetensi Untuk SMK, LPK Pariwisata, & LPK Kapal Pesiar yang siap kerja', 'Bartono', 'Andi Offset', '2010', '978-979-291-640-9', 'null'),
(56, 1, 'Teks Otoritas Kebenaran', 'Nasr Hamid Abu Zaid', 'LKiS', '2012', '979-255-359-2', 'null'),
(57, 1, 'Teologi Seksual', 'Geoffrey Parrinder', 'LKiS', '2004', '979-338-106-x', 'null'),
(58, 1, 'Belajar mikrokontroler AT89C51/52/55', 'Agfianto EP', 'Gava Media', '2010', '979-346-916-1', 'null'),
(59, 1, 'Shortcourse RPG Maker VX ACE', 'Wahana Komputer', 'Andi Offset', '2014', '978-979-294-694-9', 'null'),
(60, 1, 'Transnasionalisasi Masyarakat Sipil', 'Andi Widjajanto', 'LKiS', '2006', '979-255-247-2', 'null'),
(61, 1, 'Tuntunan Praktis : Pengembangan Aplikasi Sistem Informasi Geografis berbasis Dekstop dan Web + CD', 'Riyanto', 'Gava Media', '2009', '978-979-107-870-2', 'null'),
(62, 1, 'Web Programing Membangun Aplikasi Web Handal dengan J2EE dan MVC', 'Widodo Budiharto', 'Andi Offset', '2013', '978-979-294-131-9', 'null'),
(63, 1, 'Ajeg Bali : Gerakan, Identitas Kultural, dan Globalisasi', 'Prof. Dr. Nengah Bawa Atmadja, MA', 'LKIS', '2013', '978-979-128-398-4', 'null'),
(64, 1, 'Aplikasi Program Akutansi dengan Visual FoxPro 9.0 Aplikasi Penjualan, Pembelian dan Stok', 'Peter Wanto', 'Gava Media', '2008', '978-979-107-853-5', 'null'),
(65, 1, 'Aura dan Rinupa, Berdialog dengan Kayu, Bambu dan Batu.', 'Christina Johanes, Kristina, Maxy, Priyo', 'Andi Offset', '2014', '978-979-294-169-2', 'null'),
(66, 1, 'Buku Acuan Nasional Onkologi Ginekologi', 'Farid – Farid', 'YBP-SP (TRIDASA)', '2010', '979-815-023-6', 'null'),
(67, 1, 'Buku Ajar Gastroenterologi-Hipatology Thn 2016', 'M.Juffrie – M.Juffrie', 'IDA!', '2015', '978-979-842-146-4', 'null'),
(68, 1, 'Buku Pintar Pengelolaan BPR dan Lembaga Keuangan Pembiayaan Mikro', 'Ali SuyantoHerli', 'Andi Offset', '2013', '978-979-293-544-8', 'null'),
(69, 1, 'Busines And Personal Development', 'Josua Taringan dan Swenjiadi Yenawan', 'Andi Offset', '2013', '978-979-294-016-9', 'null'),
(70, 1, 'Cara pemeriksaan, Penyetelan dan Perawatan Kelistrikan Mobil', 'Boentarto', 'Andi Offset', '1995', '979-533-956-7', 'null'),
(71, 1, 'DAFTAR TAJUK SUBYEK DALAM BAHASA INDONESIA', 'SULISTYO-BASUKI', 'SAGUNG SETO', '2012', '979-442-350-5', 'null'),
(72, 1, 'DESAIN PEMBELAJARAN BERBASIS PENDIDIKAN KARAKTER', 'Asmaun Sahlan & Angga Teguh Prastyo', 'Ar- Ruzz Media', '2016', '978-602-187-851-4', 'null'),
(73, 1, 'Dunia Lebih Indah Tanpa Sekolah', 'Nanang Martono', 'MITRA WACANA', '2014', '978-602-135-310-3', 'null'),
(74, 1, 'Fiqh Ekonomi Syariah (Fiqh Muamalah)', 'DR. Mardani', 'Kencana', '2013', '978-602-873-097-6', 'null'),
(75, 1, 'Himpunan Undang-Undang Hak Kekayaan Intelektual', 'Massudilawe & Partner', 'Andi Offset', '2008', '978-979-290-403-1', 'null'),
(76, 1, 'Hukum Agraria Kajian Komprehensif', 'Dr. Urip Santoso, S.H., M.H', 'Kencana', '2012', '978-602-873-098-3', 'null'),
(77, 1, 'Ilmu Dakwah', 'Dr. Moh. Ali Aziz, M.AG', 'Kencana', '2016', '978-979-346-559-X', 'null'),
(78, 1, 'IMS (IP Multimedia Subsystem), Framework Dan Arsitektur Jaringan Telekomunikasi Masa Depan', 'M. Azwir', 'Andi Offset', '2014', '978-979-292-342-1', 'null'),
(79, 1, 'Islam dan Permasalahan Sosial', 'Dr. A. Qodri A Azizy', 'LKiS', '2013', '979-896-682-1', 'null'),
(80, 1, 'Islam Pesisir', 'Dr. Nur Syam', 'LKiS', '2011', '978-979-845-114-0', 'null'),
(81, 1, 'Kupas Tuntas : Microsoft Windows 8.1', 'Madcoms', 'Andi Offset', '2014', '978-979-294-506-5', 'null'),
(82, 1, 'Langkah Mudah Belajar Kalkulus For IT(Khusus P. Jawa)', 'Sudaryono, Untung Rahardja, Edi S. Mulyanta', 'Andi Offset', '2012', '978-979-291-769-7', 'null'),
(83, 1, 'Manajemen Penanganan Barang-Barang Berbahaya Pada Angkatan Udara', 'Wynd Riyaldi & M Rifni', 'MITRA WACANA', '2013', '978-602-752-348-7', 'null'),
(84, 1, 'MATA AIR PERADABAN ; Dua Milenium Wonosobo', 'H.A. Kholiq Arif', 'LKiS', '2010', '978-979-225-331-4', 'null'),
(85, 1, 'Membuat Aplikasi Sistem Aplikasi Menggunakan VB.NET', 'Yulius Ekaq Agung Saputro', 'MITRA WACANA', '2013', '978-602-752-391-3', 'null'),
(86, 1, 'Memuja Mantra ; Sabuk Mangir dan Jaran Goyang Masyarakat Suku Using Banyuwangi', 'Heru S.P. Saputra', 'LKiS', '2007', '978-979-128-322-9', 'null'),
(87, 1, 'Mendesain Model Pembelajaran Inovatif Progresif dan Kontekstual', 'Trianto, M.Pd', 'Kencana', '2015', '978-602-118-605-3', 'null'),
(88, 1, 'Menulis Itu Mudah ; Panduan Praktis Menjadi Penulis Handal', 'Sukino', 'LKiS', '2010', '978-979-255-321-5', 'null'),
(89, 1, 'Penelitian Kualitatif', 'Burhan Bungin', 'PRENADA MEDIA GRUP', '2007', '978-979-392-588-2', 'null'),
(90, 1, 'Mistisisme Hindu Muslim', 'R.C Zaehner', 'LKiS', '2016', '979-338-134-5', 'null'),
(91, 1, 'Nietzsche', 'St. Sunardi', 'LKiS', '2011', '978-979-845-160-7', 'null'),
(92, 1, 'Panduan Aplikasi dan Solusi: Pemodelan Obyek Dengan 3ds Max 2014', 'Wahana Komputer', 'Andi Offset', '2014', '978-979-295-094-6', 'null'),
(93, 1, 'Panduan Praktis Sistem Kendali Digital', 'Azwardi Dan Cekmas Cekdin', 'Andi Offset', '2015', '978-979-295-109-7', 'null'),
(94, 1, 'Pantun Melayu : Titik Temu Islam dan Budaya Lokal Nusantara', 'Abd. Rachman Abror', 'LKiS', '2009', '978-979-128-392-2', 'null'),
(95, 1, 'Pemrograman Web Membuat Sistem Informasi Akademik Sekolah Dengan PHP-MYSQL & Dreamweaver', 'Bunafit Nugroho', 'Gava Media', '2014', '978-602-786-966-0', 'null'),
(96, 1, 'PENDIDIKAN PASCAKONFLIK ; Pendidikan Multikultural Berbasis Konseling Budaya Masyarakat Maluku Utara', 'Dr. M. Tahir Sapsuha', 'LKiS', '2013', '978-979-167-767-7', 'null'),
(97, 1, 'Pengantar Membuat Robot', 'M. Ibnu Malik', 'Gava Media', '2006', '978-979-346-982-X', 'null'),
(98, 1, 'Pengantar Teknologi Informasi', 'Tata Sutabri', 'Andi Offset', '2014', '978-979-294-249-1', 'null'),
(99, 1, 'Pengenalan Dasar-Dasar PLC (Progamable Logic Controler) Disertai Contoh Aplikasinya', 'M. Budiyanto', 'Gava Media', '2006', '979-970-886-9', 'null'),
(100, 1, 'Pengolahan Citra Digital : Konsep dan Teori', 'Fajar Astuti Hermawati', 'Andi Offset', '2013', '978-979–293-119-8', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL,
  `nama` varchar(11) NOT NULL,
  `buku_id` int(11) NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `nama`, `buku_id`, `tanggal_kembali`, `status`) VALUES
(1, 'Dipta', 1, '2023-01-20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'arief7385@yahoo.com'),
(3, 'user', '6ad14ba9986e3615423dfca256d04e3f', 'ysiin3030@gmail.com'),
(4, 'ddnk', 'd8578edf8458ce06fbc5bb76a58c5ca4', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
