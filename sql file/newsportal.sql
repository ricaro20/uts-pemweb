-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2021 at 01:11 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `cid` int(11) NOT NULL,
  `uid` varchar(256) NOT NULL,
  `date` datetime NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`cid`, `uid`, `date`, `message`) VALUES
(1, 'Anon', '2021-10-10 13:50:37', 'Halo kak'),
(2, 'Anon', '2021-10-10 13:57:16', 'Hey there'),
(3, 'Anon', '2021-10-10 13:57:16', 'Hey there'),
(4, 'Anon', '2021-10-10 13:57:16', 'Hey there'),
(5, 'Anon', '2021-10-10 13:57:16', 'Hey there'),
(6, '2021-10-10 13:50:37', '0000-00-00 00:00:00', 'Halo kak ditya'),
(7, 'Anon', '2021-10-10 14:34:20', 'test aja'),
(8, 'Anon', '2021-10-10 14:52:01', 'tes oang'),
(9, 'babibabi', '2021-10-10 14:13:19', 'ahahahha'),
(10, 'babibabi', '2021-10-10 14:13:19', 'ahahahha'),
(11, 'babibabi', '2021-10-10 14:13:19', 'ahahahha'),
(12, 'babibabi', '2021-10-10 14:13:19', 'ahahahha'),
(13, 'babibabi', '2021-10-10 14:17:15', 'halo'),
(14, 'babibabi', '2021-10-10 14:17:15', 'halo'),
(15, 'babibabi', '2021-10-10 14:17:15', 'halo'),
(16, 'babibabi', '2021-10-10 14:17:15', 'halo'),
(17, 'babibabi', '2021-10-10 14:17:15', 'halo'),
(18, 'babibabi', '2021-10-10 14:17:15', 'halo'),
(19, 'babibabi', '2021-10-10 15:14:08', 'sakldjaoisdn'),
(20, 'Mama', '2021-10-10 15:20:49', 'sjoiadjaoinds');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', '$2y$12$i4LMfeFPQpGSNPTaccIkKuwxAkJ4PhBr3JND7FpXwWFjRvchQn17C', 'student@umn.ac.id', 1, '2018-05-27 17:51:00', '2021-10-11 11:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 'Sports', 'Related to sports news', '2021-10-06 10:35:09', '2021-10-10 11:11:55', 1),
(5, 'Entertainment', 'Entertainment related  News', '2021-10-10 05:32:58', '2021-10-10 05:33:41', 1),
(6, 'Politics', 'Politics', '2018-06-22 15:46:09', '0000-00-00 00:00:00', 1),
(7, 'Business', 'Business', '2018-06-22 15:46:22', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About News Portal', '<font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></font><br>', '2018-06-30 18:01:03', '2018-06-30 19:19:51'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><b>Address :&nbsp; </b>New Delhi India</p><p><b>Phone Number : </b>+91 -01234567890</p><p><b>Email -id : </b>phpgurukulofficial@gmail.com</p>', '2018-06-30 18:01:36', '2018-06-30 19:23:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 DEFAULT NULL,
  `Creator` varchar(350) NOT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `Creator`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`) VALUES
(7, 'Bucks Juara NBA', 3, 4, '<p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">Bucks Menajadi Juara NBA usai mengalahkan Phoenix Suns Di Game ke enam dengan skor 105-98 Giannis menjadi top skor di game ini dengan mencetak 50 Poin.</p>', 'Asep Mantap', '2021-10-05 18:49:23', '2021-10-10 06:25:25', 1, 'Bucks-Juara-NBA', '34e93dba5a38766f246c558aae81f0ccjpeg'),
(10, 'Pemerintah Berencana Naikkan Harga Rokok Pada 2022 Guna Tekan Jumlah Perokok Anak', 7, 9, '<p>\r\nPemerintah berencana menaikkan harga rokok dengan meningkatkan tarif cukai hasil tembakau (CHT) atau cukai rokok agar menekan jumlah perokok, terutama usia anak, yang ditargetkan mencapai 8,7 persen pada 2024.\r\n\r\n“Kalau kita lihat data, pada 2019 masih 9,1 persen. Jadi masih cukup banyak mungkin yang harus diturunkan,” kata Stafsus Menteri Keuangan Bidang Perumusan Kebijakan Fiskal Sektoral Titik Anas di Jakarta, Kamis (2/9/2021).\r\n\r\nSelama ini, pemerintah terus berupaya meningkatkan harga rokok agar tidak terjangkau oleh konsumen anak-anak.\r\n\r\nHal ini tampak dari affordability index (indeks keterjangkauan) rokok atau persentase pembelian 100 bungkus rokok terhadap Produk Domestik Bruto (PDB) per kapita yang meningkat dalam dua tahun terakhir.\r\n\r\n</p>', 'Mahmud Bahari', '2021-10-05 19:08:56', '2021-10-10 04:46:20', 1, 'Pemerintah-Berencana-Naikkan-Harga-Rokok-Pada-2022-Guna-Tekan-Jumlah-Perokok-Anak', 'b88036065ab7ec03db9e8c0eb386e87f.png'),
(11, 'Biden Menang PEMILU US', 6, 8, '<p>Media massa Amerika Serikat memastikan Joe Biden menang di Pensnsylvania, sepekan setelah pemungutan suara 3 November. Dengan 20 suara elektorat di Pennsylvania, Biden saat itu mengantongi 273 suara elektorat. Sementara Donald Trump baru mengumpulkan 214 suara elektorat, CNN melaporkan pada 7 November. Kandidat cukup membutuhkan 270 suara elektorat untuk menjadi Presiden Amerika.\r\n\r\nPertarungan tidak kemudian usai. Tim kampanye Donald Trump melayangkan gugatan ke masing-masing negara bagian medan pertempuran utama, seperti Pennsylvania, Michigan, Georgia, dan Nevada. Mereka menuduh ada kecurangan yang masif dan sistematis selama Pilpres Amerikaa.</p>', 'Babibubebo', '2021-05-31 19:10:36', '2021-10-10 04:46:31', 1, 'Biden-Menang-PEMILU-US', '61719bc0ab147127496a94f02ff7a7d1.png'),
(12, 'Film Shang Chi', 5, 7, '<p>\r\n\r\nSang-Chi and The Legend of The Ten Rings memperkenalkan karakter Shang Chi, adiwira terbaru Marvel Cinematic Universe (MCU). Film ini akan menceritakan awal kisah Shang-Chi yang belum pernah diketahui sebelumnya.\r\n\r\nSimu Liu berperan sebagai tokoh utama, Shang-Chi. Ia beradu peran dengan Awkwafina, Michelle Yeoh, dan Tony Leung dalam adegan-adegan yang melibatkan aksi seru dengan sentuhan emosional dan humor ala MCU.\r\n\r\nShang-Chi merupakan salah satu karakter terbaru yang masuk ke dalam MCU di fase keempat ini. Karakter Shang-Chi dibuat oleh Marvel Comics pada tahun 1970-an.\r\n\r\nTim kreatif Marvel yang dipimpin oleh Kevin Feige dan Jonathan Schwartz merasa tertarik sekaligus tertantang saat melihat kisah dan karakter yang ada dalam komik tersebut. Keduanya lalu memutuskan untuk mengangkat kisah dari karakter Shang-Chi dengan sentuhan baru yang segar agar tetap relevan.\r\n\r\nDalam film ini, karakter Shang-Chi digambarkan sebagai sosok yang memiliki hubungan langsung dengan Ten Rings, sebuah organisasi misterius yang dahulu terlibat dalam penculikan Tony Stark di film Iron Man pertama. Sosok di balik organisasi tersebut akhirnya terungkap dan dikenal sebagai The Mandarin dalam film Iron Man 3 (2013).\r\n\r\nAkan tetapi, di akhir film tersebut, para penggemar dikejutkan dengan fakta bahwa The Mandarin hanyalah tokoh palsu yang diperankan oleh seorang aktor bayaran bernama Trevor Slattery. Melalui film ini, para penonton akan diajak untuk melihat kembali sejarah serta tokoh dibalik organisasi Ten Rings sebenarnya, yaitu Xu Wenwu, yang merupakan ayah Shang-Chi.\r\n\r\n</p>', 'Bababa', '2021-10-05 19:11:44', '2021-10-10 04:46:41', 1, 'Film-Shang-Chi', '1c10689e15df65d85829f8d189550acb.png'),
(13, 'Cristiano Ronaldo Gabung MU', 3, NULL, '<p>CRISTIANO Ronaldo akhirnya tiba di Kota Manchester pada Sabtu, (4/9/2021) dini hari WIB. Kabarnya, pesepakbola 36 tahun itu langsung berambisi mengantarkan Manchester United juara Liga Inggris 2021-2022.\r\n</br>\r\n“Ronaldo telah berbicara dengan Bruno Fernandes dan mengatakan kepadanya untuk memberi tahu pemain lain bahwa mereka perlu memenangkannya (Liga Inggris) tahun ini,” ujar salah satu sumber dilansir dari The Sun, Sabtu (4/9/2021).\r\n</br>\r\nCristiano Ronaldo diperkirakan akan berlatih di Carrington -markas Latihan Manchester United- untuk pertama kalinya pada Rabu, 8 September 2021. Sebelum berlatih, Cristiano Ronaldo harus lebih dulu menjalani karantina.\r\n\r\nDi sisi lain, ruang ganti Manchester United pun menyambut positif kehadiran Cristiano Ronaldo. Kedatangan pemain besar seperti Cristiano Ronaldo pasalnya memotivasi para penggawa Manchester United untuk berjuang keras meraih titel bergengsi.\r\n\r\n“Para pemain sangat senang dengan kedatangan Ronaldo. Mereka seolah diberikan dorongan besar dan merasa sangat percaya diri,\" tulis sumber tersebut.\r\n\r\n“Saat ini, para pemain dan staf pelatih percaya bahwa mereka memiliki skuad terbaik di liga dan dapat memenangkan Liga Inggris musim ini,\" lanjut Cristiano Ronaldo.\r\n</p>', 'Mahmud', '2021-10-10 06:28:42', '2021-10-10 06:28:57', 1, 'Cristiano-Ronaldo-Gabung-MU', 'b2742935d17b143a6e67bbf4d764e5db.png'),
(14, 'Messi Gabung PSG', 3, NULL, '<p>Lionel Messi resmi bergabung dengan Paris Saint-Germain atau PSG, Selasa (10/8/2021). Messi gabung dengan durasi kontrak dua tahun dengan opsi perpanjangan satu tahun.</br>\r\n\r\nLionel Messi gabung dengan status bebas transfer dan tak punya klub. Dia sudah bebas transfer sejak 30 Juni lalu setelah kontraknya belum diperpanjang Barcelona.</br>\r\n\r\nMessi bakal menggunakan nomor 30 di PSG. Ini merupakan nomor yang dipakainya saat debut dengan Barcelona pada 2004 lalu.</br>\r\n\r\nLa Pulga mengaku sangat antusias gabung dengan klub ibukota Prancis ini. Dia siap membantu klub jadi lebih besar.</br>\r\n\r\n\"Visi klub ini sejalan dengan ambisi saya. Saya tahu betapa berbakatnya pemain-pemain dan staf di sini. Saya siap bangun tim, sesuatu yang luar biasa untuk klub dan fans,\" ujar Messi seperti dikutip Marca.</p>', 'Maman', '2021-10-10 06:41:18', '2021-10-10 14:51:03', 0, 'Messi-Gabung-PSG', '57bd80a14207e3c692988eb7f4d7a1d6.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `lahir` date NOT NULL,
  `gender` char(1) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `lahir`, `gender`, `username`, `email`, `password`) VALUES
(8, 'Babi', 'babi', '2005-10-02', 'L', 'babibabi', 'babi@gmail.com', '825e50dcdd8e270a266387c031bbca05'),
(9, 'Ricaro', 'Alisio', '2002-10-16', 'L', 'ricaro_', 'ricaro.alisio@student.umn.ac.id', 'dbb5c4c1b1cac7f6b9951033d63e7a1a'),
(13, 'Bams', 'asd', '2021-10-14', 'P', 'bams_', 'bams@gmail.com', 'd1570931c7b177a4202954025bf8716b'),
(14, 'Mama', 'Mami', '2021-10-29', 'P', 'Mama', 'mama@gmail.com', 'eeafbf4d9b3957b139da7b7f2e7f2d4a'),
(15, 'asdasdasd', 'asdasdasd', '2021-10-07', 'P', 'asdasdasdasd', 'msa@gmail.com', 'b9342a7d3a63c2b2d444dd9caf437f22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
