-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Feb 2020 pada 08.00
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suryatravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` int(1) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `nama`, `password`, `level`, `status`) VALUES
('143216001', 'Muhammad Nurrudin', 'udin2020', 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_history_login`
--

CREATE TABLE `admin_history_login` (
  `id_ahl` int(11) NOT NULL,
  `waktu_login` datetime NOT NULL,
  `waktu_logout` datetime NOT NULL,
  `username` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `brosur`
--

CREATE TABLE `brosur` (
  `id_brosur` int(11) NOT NULL,
  `nama_file` varchar(100) NOT NULL,
  `ukuran_file` int(20) NOT NULL,
  `type_file` varchar(10) NOT NULL,
  `waktu` datetime NOT NULL,
  `admin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `brosur`
--

INSERT INTO `brosur` (`id_brosur`, `nama_file`, `ukuran_file`, `type_file`, `waktu`, `admin`) VALUES
(1, 'PENGUMUMAN_UJIAN_PROPOSAL_PEB_2020.pdf', 137952, 'pdf', '2020-02-27 12:02:08', 'Muhammad Nurrudin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `nama_galeri` varchar(20) NOT NULL,
  `waktu` datetime NOT NULL,
  `admin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `nama_galeri`, `waktu`, `admin`) VALUES
(1, 'Album Coba', '2020-02-20 21:28:53', 'Muhammad Nurrudin'),
(3, 'Album Coba 2', '2020-02-27 10:03:42', 'Muhammad Nurrudin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri_foto`
--

CREATE TABLE `galeri_foto` (
  `id_galeri_foto` int(11) NOT NULL,
  `id_album` int(11) NOT NULL,
  `nama_file` varchar(100) NOT NULL,
  `ukuran_file` int(20) NOT NULL,
  `type_file` varchar(10) NOT NULL,
  `waktu` datetime NOT NULL,
  `admin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `galeri_foto`
--

INSERT INTO `galeri_foto` (`id_galeri_foto`, `id_album`, `nama_file`, `ukuran_file`, `type_file`, `waktu`, `admin`) VALUES
(1, 1, 'images__1_.jpg', 42959, 'jpg', '2020-02-27 08:36:59', 'Muhammad Nurrudin'),
(2, 1, 'images__2_.jpg', 48806, 'jpg', '2020-02-27 08:53:29', 'Muhammad Nurrudin'),
(3, 3, 'images__3_.jpg', 48580, 'jpg', '2020-02-27 10:03:55', 'Muhammad Nurrudin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri_video`
--

CREATE TABLE `galeri_video` (
  `id_galery_video` int(11) NOT NULL,
  `id_album` int(11) NOT NULL,
  `nama_video` varchar(50) NOT NULL,
  `script_embed` longtext NOT NULL,
  `waktu` datetime NOT NULL,
  `admin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `galeri_video`
--

INSERT INTO `galeri_video` (`id_galery_video`, `id_album`, `nama_video`, `script_embed`, `waktu`, `admin`) VALUES
(1, 1, 'Lebih Baik Lari atau Jalan Waktu Hujan', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YdE8gxSKfXk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2020-02-27 12:58:10', 'Muhammad Nurrudin'),
(2, 1, 'membaik', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/TSJSydJRJWw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2020-02-27 13:05:58', 'Muhammad Nurrudin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `harga_produk_umroh`
--

CREATE TABLE `harga_produk_umroh` (
  `id_harga_produk_umroh` varchar(9) NOT NULL,
  `id_produk_umroh` int(11) NOT NULL,
  `tipe_kamar` varchar(20) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `url` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `harga_produk_umroh`
--

INSERT INTO `harga_produk_umroh` (`id_harga_produk_umroh`, `id_produk_umroh`, `tipe_kamar`, `harga`, `url`) VALUES
('085903628', 5, 'default', '23999000', ''),
('273942847', 5, 'double', '26739800', ''),
('734493735', 5, 'quad', '32230400', ''),
('735355343', 5, 'triple', '29480600', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hotel`
--

CREATE TABLE `hotel` (
  `id_hotel` int(11) NOT NULL,
  `nama_hotel` varchar(50) NOT NULL,
  `bintang` int(2) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `tgl_publikasi` datetime NOT NULL,
  `admin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hotel`
--

INSERT INTO `hotel` (`id_hotel`, `nama_hotel`, `bintang`, `kota`, `tgl_publikasi`, `admin`) VALUES
(1, 'Sahiliyah Golden', 3, 'Madinah', '2020-02-08 11:44:36', 'Muhammad Nurrudin'),
(2, 'Taibah arac suite', 4, 'Madinah', '2020-02-08 11:47:31', 'Muhammad Nurrudin'),
(3, 'Muhtara international', 4, 'Madinah', '2020-02-08 11:49:04', 'Muhammad Nurrudin'),
(4, 'Dar at taqwa', 5, 'Madinah', '2020-02-08 11:49:54', 'Muhammad Nurrudin'),
(5, 'Saraya Taibah', 3, 'Madinah', '2020-02-08 11:50:15', 'Muhammad Nurrudin'),
(6, 'Al saha', 3, 'Madinah', '2020-02-08 11:50:36', 'Muhammad Nurrudin'),
(7, 'Saraya ajyad', 3, 'Mekkah', '2020-02-08 12:10:29', 'Muhammad Nurrudin'),
(8, 'Saraya eiman', 3, 'Mekkah', '2020-02-08 12:10:53', 'Muhammad Nurrudin'),
(9, 'Azka sofa', 4, 'Mekkah', '2020-02-08 12:11:19', 'Muhammad Nurrudin'),
(10, 'Le meridien', 4, 'Mekkah', '2020-02-08 12:11:40', 'Muhammad Nurrudin'),
(11, 'Rayyana', 4, 'Mekkah', '2020-02-08 12:12:01', 'Muhammad Nurrudin'),
(12, 'Ajyad makarim', 4, 'Mekkah', '2020-02-08 12:12:22', 'Muhammad Nurrudin'),
(13, 'Hilton', 5, 'Mekkah', '2020-02-08 12:12:44', 'Muhammad Nurrudin'),
(14, 'Pullman', 5, 'Mekkah', '2020-02-08 12:13:05', 'Muhammad Nurrudin'),
(15, 'Dar al eiman', 5, 'Mekkah', '2020-02-08 12:13:25', 'Muhammad Nurrudin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jamaah_umroh`
--

CREATE TABLE `jamaah_umroh` (
  `id_jamaah_umroh` varchar(9) NOT NULL,
  `id_produk_umroh` int(11) NOT NULL,
  `email_user` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `alamat_domisili` longtext NOT NULL,
  `kota_domisili` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `tipe_kamar` varchar(10) NOT NULL,
  `metode_pembayaran` varchar(10) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `waktu` datetime NOT NULL,
  `admin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `icon`, `waktu`, `admin`) VALUES
(1, 'Reguler', 'reguler.png', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `maskapai`
--

CREATE TABLE `maskapai` (
  `id_maskapai` int(11) NOT NULL,
  `nama_maskapai` varchar(50) NOT NULL,
  `url` varchar(200) NOT NULL,
  `waktu` datetime NOT NULL,
  `admin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `maskapai`
--

INSERT INTO `maskapai` (`id_maskapai`, `nama_maskapai`, `url`, `waktu`, `admin`) VALUES
(1, 'Lion Air', 'https://jagoanadvertising.com/wp-content/uploads/2018/06/Logo-Lion-air-1.jpg', '2020-02-08 12:04:07', 'Muhammad Nurrudin'),
(2, 'Saudia Airlines', 'http://pluspng.com/img-png/saudia-airlines-logo-png-in-2012-saudi-arabian-airlines-was-reverted-back-the-saudia-name-to-celebrate-the-airline-s-entry-to-the-skyteam-aliance-713.png', '2020-02-08 12:08:54', 'Muhammad Nurrudin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk_umroh`
--

CREATE TABLE `produk_umroh` (
  `id_produk_umroh` int(11) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `tags` varchar(20) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `durasi` int(2) NOT NULL,
  `rencana_perjalanan` longtext NOT NULL,
  `dokumen_peserta` longtext NOT NULL,
  `syarat_dan_ketentuan` longtext NOT NULL,
  `status_tutup` int(2) NOT NULL,
  `payment_gateway` int(2) NOT NULL,
  `admin` varchar(50) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk_umroh`
--

INSERT INTO `produk_umroh` (`id_produk_umroh`, `kategori`, `tags`, `nama_produk`, `start_date`, `durasi`, `rencana_perjalanan`, `dokumen_peserta`, `syarat_dan_ketentuan`, `status_tutup`, `payment_gateway`, `admin`, `waktu`) VALUES
(5, 'Reguler', 'promo', 'Program Umroh 9 Hari', '2020-03-25', 9, '', '', '<div class=\"WordSection1\">\r\n<p style=\"margin-right:257px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><u><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:red\">Syarat pendaftaran dan ketentuan :</span></span></span></u></strong></span></span></p>\r\n\r\n<p style=\"margin-right:257px\">&nbsp;</p>\r\n\r\n<ol>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Mengisi formulir pendaftaran umroh/haji</span></span></strong></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Pembayaran DP sebesar Rp.10.000.000,-</span></span></strong></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Pelunasan pembayaran 1 bulan sebelum keberangkatan.</span></span></strong></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Pembayaran dilakukan dengan cara tunai/ transfer ke rekening perusahaan</span></span></strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">.</span></span></span></span></li>\r\n</ol>\r\n\r\n<p style=\"margin-right:257px\">&nbsp;</p>\r\n\r\n<p style=\"margin-right:257px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-family:&quot;Times New Roman&quot;,serif\">BANK MANDIRI </span></strong></span></span></p>\r\n\r\n<p style=\"margin-right:257px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-family:&quot;Times New Roman&quot;,serif\">ATAS NAMA PT. SURYA TITO GEMILANG</span></strong></span></span></p>\r\n\r\n<p style=\"margin-right:257px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-family:&quot;Times New Roman&quot;,serif\">NO.REK :</span></strong><span style=\"font-family:&quot;Times New Roman&quot;,serif\"> <strong><u>141-00-1701-6387</u></strong></span></span></span></p>\r\n\r\n<p style=\"margin-right:257px\">&nbsp;</p>\r\n</div>\r\n\r\n<div style=\"page-break-after:always\"><span style=\"display:none\">&nbsp;</span></div>\r\n\r\n<p style=\"margin-right:257px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><u><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:red\">HARGA BELUM TERMASUK :</span></span></u></strong></span></span></p>\r\n\r\n<p style=\"margin-right:257px\">&nbsp;</p>\r\n\r\n<ol>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">PASPORT</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">VAKSIN MENINGITIS</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">PENGELUARAN LAIN DI LUAR PROGRAM.</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">PERUBAHAN KAMAR HOTEL $200 PERPACK</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">SURAT MAHRAM BAGI PEREMPUAN DIBAWAH USIA 45 TAHUN.</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">BIAYA KIRIM PERLENGKAPAN BAGI JAMAAH LUAR KOTA.</span></span></span></span></li>\r\n</ol>\r\n\r\n<p style=\"margin-right:257px\">&nbsp;</p>\r\n\r\n<p style=\"margin-right:257px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><u><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:red\">HARGA SUDAH TERMASUK :</span></span></u></strong></span></span></p>\r\n\r\n<p style=\"margin-right:257px\">&nbsp;</p>\r\n\r\n<ol>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">TIKET PESAWAT ECONOMY CLASS PP.</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">VISA SAUDI</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">HANDLING</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">AKOMODASI HOTEL SESUAI PAKET</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">MAKAN 3X SEHARI PRASMANAN</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">TRANSPORTASI BIS SELAMA ZIARAH</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">BIMBINGNGAN MANASIK 1X</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">PERLENGKAPAN</span></span></span></span></li>\r\n</ol>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">KOPER BAGASI</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">TAS PASPORT</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">KAIN BATIK</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">AIR ZAM ZAM</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">IHROM/MUKENA</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">ID CARD,BUKU DOA</span></span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-right:257px\">&nbsp;</p>\r\n\r\n<p style=\"margin-right:257px\">&nbsp;</p>\r\n\r\n<p style=\"margin-right:257px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">HORMAT KAMI</span></span></span></span></p>\r\n\r\n<p style=\"margin-right:257px\">&nbsp;</p>\r\n\r\n<p style=\"margin-right:257px\">&nbsp;</p>\r\n\r\n<p style=\"margin-right:257px\">&nbsp;</p>\r\n\r\n<p><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">MANAJEMEN PT. SURYA TITO GEMILANG</span></span></p>\r\n', 0, 0, 'Muhammad Nurrudin', '2020-02-19 19:15:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk_umroh_hotel`
--

CREATE TABLE `produk_umroh_hotel` (
  `id_produk_umroh_hotel` int(11) NOT NULL,
  `id_produk_umroh` int(11) NOT NULL,
  `id_hotel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk_umroh_hotel`
--

INSERT INTO `produk_umroh_hotel` (`id_produk_umroh_hotel`, `id_produk_umroh`, `id_hotel`) VALUES
(3, 5, 1),
(4, 5, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk_umroh_maskapai`
--

CREATE TABLE `produk_umroh_maskapai` (
  `id_umorh_maskapai` int(11) NOT NULL,
  `id_produk_umroh` int(11) NOT NULL,
  `id_maskapai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk_umroh_maskapai`
--

INSERT INTO `produk_umroh_maskapai` (`id_umorh_maskapai`, `id_produk_umroh`, `id_maskapai`) VALUES
(3, 5, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tentang_kami`
--

CREATE TABLE `tentang_kami` (
  `id_post` int(11) NOT NULL,
  `konten` longtext NOT NULL,
  `waktu` datetime NOT NULL,
  `admin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tentang_kami`
--

INSERT INTO `tentang_kami` (`id_post`, `konten`, `waktu`, `admin`) VALUES
(1, '<p style=\"margin-left:-15px; margin-right:-15px\"><span style=\"font-size:11pt\" wfd-id=\"146\"><span style=\"background-color:white\" wfd-id=\"147\"><span style=\"font-family:Calibri,sans-serif\" wfd-id=\"148\"><span style=\"font-size:18.0pt\" wfd-id=\"149\"><span style=\"color:black\" wfd-id=\"150\">Latar belakang&nbsp;</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:-15px; margin-right:-15px\"><span style=\"font-size:11pt\" wfd-id=\"141\"><span style=\"background-color:white\" wfd-id=\"142\"><span style=\"font-family:Calibri,sans-serif\" wfd-id=\"143\"><span style=\"font-size:12.0pt\" wfd-id=\"144\"><span style=\"color:#5f5f5f\" wfd-id=\"145\">PT. Surya Tito Gemilang, adalah sebuah perusahaan yang bergerak dibidang jasa perjalanan wisata domestik dan luar negeri yang berdiri sejak tahun 2016. Pada tahun 2017 PT. Surya Tito Gemilang dengan nama Brands Surya Travel,melebarkan sayap untuk memberikan pelayan perjalanan ibadah umroh dan haji khusus&nbsp; yang&nbsp; Di support penuh oleh PT. Astri Duta Mandiri umroh n hajj.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:-15px; margin-right:-15px\"><span style=\"font-size:11pt\" wfd-id=\"136\"><span style=\"background-color:white\" wfd-id=\"137\"><span style=\"font-family:Calibri,sans-serif\" wfd-id=\"138\"><span style=\"font-size:12.0pt\" wfd-id=\"139\"><span style=\"color:#5f5f5f\" wfd-id=\"140\">SK Kemenag nomer 770 tahun 2016.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:-15px; margin-right:-15px\"><span style=\"font-size:11pt\" wfd-id=\"131\"><span style=\"background-color:white\" wfd-id=\"132\"><span style=\"font-family:Calibri,sans-serif\" wfd-id=\"133\"><span style=\"font-size:12.0pt\" wfd-id=\"134\"><span style=\"color:#5f5f5f\" wfd-id=\"135\">Surya Travel berfokus pada keunggulan layanan dalam memenuhi kebutuhan jamaah dan mejaga standar yang tinggi untuk kepuasan setiap jamaah</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:-15px; margin-right:-15px\"><span style=\"font-size:11pt\" wfd-id=\"126\"><span style=\"background-color:white\" wfd-id=\"127\"><span style=\"font-family:Calibri,sans-serif\" wfd-id=\"128\"><span style=\"font-size:12.0pt\" wfd-id=\"129\"><span style=\"color:#5f5f5f\" wfd-id=\"130\">Surya travel&nbsp; selalu berusaha maksimal untuk memberi kemudahan kepada Pelanggan yang akan melakukan perjalanan wisata atau ibadah dengan menyediakan semua kebutuhan Pelanggan, Mulai dari Tiket Pesawat, Reservasi Hotel, Paket Tour Domestik maupun International, Pengurusan Paspor, Visa sampai Penukaran Mata Uang Asing.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:-15px; margin-right:-15px\"><span style=\"font-size:11pt\" wfd-id=\"121\"><span style=\"background-color:white\" wfd-id=\"122\"><span style=\"font-family:Calibri,sans-serif\" wfd-id=\"123\"><span style=\"font-size:18.0pt\" wfd-id=\"124\"><span style=\"color:black\" wfd-id=\"125\">Visi</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:-15px; margin-right:-15px\"><span style=\"font-size:11pt\" wfd-id=\"116\"><span style=\"background-color:white\" wfd-id=\"117\"><span style=\"font-family:Calibri,sans-serif\" wfd-id=\"118\"><span style=\"font-size:12.0pt\" wfd-id=\"119\"><span style=\"color:#5f5f5f\" wfd-id=\"120\">menjadikan ibadah anda bernilai lebih dan bermakna.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:-15px; margin-right:-15px\"><span style=\"font-size:11pt\" wfd-id=\"111\"><span style=\"background-color:white\" wfd-id=\"112\"><span style=\"font-family:Calibri,sans-serif\" wfd-id=\"113\"><span style=\"font-size:12.0pt\" wfd-id=\"114\"><span style=\"color:#5f5f5f\" wfd-id=\"115\">bukan sekedar melayani,tapi kami menjadikan ibadah anda nikmat sampai ke hati.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:-15px; margin-right:-15px\"><span style=\"font-size:11pt\" wfd-id=\"106\"><span style=\"background-color:white\" wfd-id=\"107\"><span style=\"font-family:Calibri,sans-serif\" wfd-id=\"108\"><span style=\"font-size:18.0pt\" wfd-id=\"109\"><span style=\"color:black\" wfd-id=\"110\">Misi</span></span></span></span></span></p>\r\n\r\n<ul wfd-id=\"80\">\r\n	<li wfd-id=\"101\"><span style=\"font-size:11pt\" wfd-id=\"102\"><span style=\"font-family:Calibri,sans-serif\" wfd-id=\"103\"><span style=\"font-size:12.0pt\" wfd-id=\"104\"><span style=\"color:#5f5f5f\" wfd-id=\"105\">Memberikan kemudahan bagi seluruh jamaah dengan menghadirkan pilihan layanan yang bervariasi sesuai kebutuhan.</span></span></span></span></li>\r\n	<li wfd-id=\"96\"><span style=\"font-size:11pt\" wfd-id=\"97\"><span style=\"font-family:Calibri,sans-serif\" wfd-id=\"98\"><span style=\"font-size:12.0pt\" wfd-id=\"99\"><span style=\"color:#5f5f5f\" wfd-id=\"100\">Berkhidmat untuk kepuasan dan kenyamanan jamaah dalam perjalanan ibadah dengan mengedepankan pelayanan prima.</span></span></span></span></li>\r\n	<li wfd-id=\"91\"><span style=\"font-size:11pt\" wfd-id=\"92\"><span style=\"font-family:Calibri,sans-serif\" wfd-id=\"93\"><span style=\"font-size:12.0pt\" wfd-id=\"94\"><span style=\"color:#5f5f5f\" wfd-id=\"95\">Menjadi penyelenggara umrah yang bermutu, amanah, professional yang berfokus pada kepuasan pelanggan.</span></span></span></span></li>\r\n	<li wfd-id=\"86\"><span style=\"font-size:11pt\" wfd-id=\"87\"><span style=\"font-family:Calibri,sans-serif\" wfd-id=\"88\"><span style=\"font-size:12.0pt\" wfd-id=\"89\"><span style=\"color:#5f5f5f\" wfd-id=\"90\">Menyelenggarakan perjalanan ibadah Haji dan Umrah dengan kualitas layanan maksimal untuk mencapai kekhusukan Ibadah</span></span></span></span></li>\r\n	<li wfd-id=\"81\"><span style=\"font-size:11pt\" wfd-id=\"82\"><span style=\"font-family:Calibri,sans-serif\" wfd-id=\"83\"><span style=\"font-size:12.0pt\" wfd-id=\"84\"><span style=\"color:#5f5f5f\" wfd-id=\"85\">Mengembangkan wisata regular dan religi sebagai sebuah alternatif perjalanan wisata bagi pelanggan.</span></span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:-15px; margin-right:-15px\"><span style=\"font-size:11pt\" wfd-id=\"75\"><span style=\"background-color:white\" wfd-id=\"76\"><span style=\"font-family:Calibri,sans-serif\" wfd-id=\"77\"><span style=\"font-size:18.0pt\" wfd-id=\"78\"><span style=\"color:black\" wfd-id=\"79\">Mengapa bergabung bersama Surya Tito Gemilang</span></span></span></span></span></p>\r\n\r\n<ol>\r\n	<li wfd-id=\"68\"><span style=\"font-size:11pt\" wfd-id=\"69\"><span style=\"font-family:Calibri,sans-serif\" wfd-id=\"70\"><strong><span style=\"font-size:12.0pt\" wfd-id=\"73\"><span style=\"color:black\" wfd-id=\"74\">VARIASI PROGRAM</span></span></strong><span style=\"font-size:12.0pt\" wfd-id=\"71\"><span style=\"color:#5f5f5f\" wfd-id=\"72\">. Kami memahami setiap jamaah mempunyai kondisi yang berbeda-beda, oleh karena itu kami menghadirkan pilihan program yang sesuai dengan kebutuhan.</span></span></span></span></li>\r\n	<li wfd-id=\"61\"><span style=\"font-size:11pt\" wfd-id=\"62\"><span style=\"font-family:Calibri,sans-serif\" wfd-id=\"63\"><strong><span style=\"font-size:12.0pt\" wfd-id=\"66\"><span style=\"color:black\" wfd-id=\"67\">BANYAK TANGGAL</span></span></strong><span style=\"font-size:12.0pt\" wfd-id=\"64\"><span style=\"color:#5f5f5f\" wfd-id=\"65\">. untuk mengakomodir banyaknya demand keberangkatan, kami menyediakan banyak tanggal yang memudahkan anda sekeluarga memilih tanggal yang tepat.</span></span></span></span></li>\r\n	<li wfd-id=\"54\"><span style=\"font-size:11pt\" wfd-id=\"55\"><span style=\"font-family:Calibri,sans-serif\" wfd-id=\"56\"><strong><span style=\"font-size:12.0pt\" wfd-id=\"59\"><span style=\"color:black\" wfd-id=\"60\">AUDIO HAJJ</span></span></strong><span style=\"font-size:12.0pt\" wfd-id=\"57\"><span style=\"color:#5f5f5f\" wfd-id=\"58\">. setiap jamaah umroh akan disertai audio hajj untuk memudahkan jamaah melatunkan doa yang di baca oleh Muthowif.</span></span></span></span></li>\r\n	<li wfd-id=\"47\"><span style=\"font-size:11pt\" wfd-id=\"48\"><span style=\"font-family:Calibri,sans-serif\" wfd-id=\"49\"><strong><span style=\"font-size:12.0pt\" wfd-id=\"52\"><span style=\"color:black\" wfd-id=\"53\">LEGALITAS &amp; PERIJINAN YANG LENGKAP &amp; RESMI</span></span></strong><span style=\"font-size:12.0pt\" wfd-id=\"50\"><span style=\"color:#5f5f5f\" wfd-id=\"51\">. Surya travel,disupport penuh oleh Astri Duta mandiri untuk melayani perjalan ibadah umroh telah berijin resmi. SK KEMENAG NO.770 TAHUN 2016&nbsp;</span></span></span></span></li>\r\n	<li wfd-id=\"40\"><span style=\"font-size:11pt\" wfd-id=\"41\"><span style=\"font-family:Calibri,sans-serif\" wfd-id=\"42\"><strong><span style=\"font-size:12.0pt\" wfd-id=\"45\"><span style=\"color:black\" wfd-id=\"46\">PERLENGKAPAN KOMPLIT</span></span></strong><span style=\"font-size:12.0pt\" wfd-id=\"43\"><span style=\"color:#5f5f5f\" wfd-id=\"44\">. Perjalanan tidak sempurna tanpa perlengkapan, kami siapkan koper bagasi 24 inch dan koper kabin 18 inc berbahan fiber.</span></span></span></span></li>\r\n	<li wfd-id=\"33\"><span style=\"font-size:11pt\" wfd-id=\"34\"><span style=\"font-family:Calibri,sans-serif\" wfd-id=\"35\"><strong><span style=\"font-size:12.0pt\" wfd-id=\"38\"><span style=\"color:black\" wfd-id=\"39\">FLEKSIBILITAS</span></span></strong><span style=\"font-size:12.0pt\" wfd-id=\"36\"><span style=\"color:#5f5f5f\" wfd-id=\"37\">. Kami menyediakan paket khusus yakni Paket Private dimana Anda bisa bebas memilih tanggal keberangkatan, durasi, akomodasi, transportasi dan rute. Mengizinkan Anda membuat paket sesuai keinginan.</span></span></span></span></li>\r\n	<li wfd-id=\"26\"><span style=\"font-size:11pt\" wfd-id=\"27\"><span style=\"font-family:Calibri,sans-serif\" wfd-id=\"28\"><strong><span style=\"font-size:12.0pt\" wfd-id=\"31\"><span style=\"color:black\" wfd-id=\"32\">TIM EXPERT</span></span></strong><span style=\"font-size:12.0pt\" wfd-id=\"29\"><span style=\"color:#5f5f5f\" wfd-id=\"30\">. Perjalanan anda akan disertai oleh tim kami yang berpengalaman dan individu yang berkomitmen yang akan bekerja ekstra untuk membuat perjalanan ibadah anda tak terlupakan. Tim kami adalah salah satu aset paling berharga kami.</span></span></span></span></li>\r\n	<li wfd-id=\"19\"><span style=\"font-size:11pt\" wfd-id=\"20\"><span style=\"font-family:Calibri,sans-serif\" wfd-id=\"21\"><strong><span style=\"font-size:12.0pt\" wfd-id=\"24\"><span style=\"color:black\" wfd-id=\"25\">KEJUJURAN &amp; KOMITMEN</span></span></strong><span style=\"font-size:12.0pt\" wfd-id=\"22\"><span style=\"color:#5f5f5f\" wfd-id=\"23\">. Kami akan selalu melakukan yang terbaik untuk memberikan apa yang telah kami janjikan. Kami berkomitmen untuk memastikan bahwa Umroh &amp; Haji Anda selesai dengan cara yang tepat. ini lebih dari sekedar bisnis untuk kami.</span></span></span></span></li>\r\n	<li wfd-id=\"12\"><span style=\"font-size:11pt\" wfd-id=\"13\"><span style=\"font-family:Calibri,sans-serif\" wfd-id=\"14\"><strong><span style=\"font-size:12.0pt\" wfd-id=\"17\"><span style=\"color:black\" wfd-id=\"18\">EDUKASI</span></span></strong><span style=\"font-size:12.0pt\" wfd-id=\"15\"><span style=\"color:#5f5f5f\" wfd-id=\"16\">. Salah satu tujuan kami adalah untuk membuat perjalanan Anda lebih bermakna secara keseluruhan. Mulai dari manasik sebelum keberangkatan, tausyiah ketika di tanah suci dan edukasi selama diperjalanan.</span></span></span></span></li>\r\n	<li wfd-id=\"5\"><span style=\"font-size:11pt\" wfd-id=\"6\"><span style=\"font-family:Calibri,sans-serif\" wfd-id=\"7\"><strong><span style=\"font-size:12.0pt\" wfd-id=\"10\"><span style=\"color:black\" wfd-id=\"11\">LOKASI MINA</span></span></strong><span style=\"font-size:12.0pt\" wfd-id=\"8\"><span style=\"color:#5f5f5f\" wfd-id=\"9\">. Di Mina, kami adalah salah satu dari sedikit perusahaan yang terletak di tenda-tenda &#39;vip&#39; 10 menit berjalan kaki dari Jamarat. Sebagian besar perusahaan Indonesia tinggal di wilayah sekitar 1 jam berjalan ke Jamarat di suhu melebihi 40&ordm;C.</span></span></span></span></li>\r\n</ol>\r\n\r\n<p style=\"margin-left:-15px; margin-right:-15px\"><span style=\"font-size:11pt\" wfd-id=\"0\"><span style=\"background-color:white\" wfd-id=\"1\"><span style=\"font-family:Calibri,sans-serif\" wfd-id=\"2\"><span style=\"font-size:12.0pt\" wfd-id=\"3\"><span style=\"color:#5f5f5f\" wfd-id=\"4\">dengan semangat melayani dan berkhidmat,kami akan menjadikan ibadah anda bernilai lebih dan bermakna</span></span></span></span></span></p>\r\n', '2020-01-30 08:04:05', 'Muhammad Nurrudin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `email` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` longtext NOT NULL,
  `nik` varchar(20) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`email`, `password`, `nama`, `alamat`, `nik`, `hp`, `waktu`) VALUES
('', 'hakami', '123454323', 'Muhammad Hakamy Fazlurahman ', 'Buduran', '987667890', '2020-02-27 00:00:00'),
('andikaferi10@gmail.com', 'feriandika', 'Feri Andriyanto Sandika', 'Rungkut Menanggal 2B No.14D', '36711264069100', '089668730', '2020-02-17 08:00:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `admin_history_login`
--
ALTER TABLE `admin_history_login`
  ADD PRIMARY KEY (`id_ahl`);

--
-- Indeks untuk tabel `brosur`
--
ALTER TABLE `brosur`
  ADD PRIMARY KEY (`id_brosur`);

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indeks untuk tabel `galeri_foto`
--
ALTER TABLE `galeri_foto`
  ADD PRIMARY KEY (`id_galeri_foto`);

--
-- Indeks untuk tabel `galeri_video`
--
ALTER TABLE `galeri_video`
  ADD PRIMARY KEY (`id_galery_video`);

--
-- Indeks untuk tabel `harga_produk_umroh`
--
ALTER TABLE `harga_produk_umroh`
  ADD PRIMARY KEY (`id_harga_produk_umroh`);

--
-- Indeks untuk tabel `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id_hotel`);

--
-- Indeks untuk tabel `jamaah_umroh`
--
ALTER TABLE `jamaah_umroh`
  ADD PRIMARY KEY (`id_jamaah_umroh`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `maskapai`
--
ALTER TABLE `maskapai`
  ADD PRIMARY KEY (`id_maskapai`);

--
-- Indeks untuk tabel `produk_umroh`
--
ALTER TABLE `produk_umroh`
  ADD PRIMARY KEY (`id_produk_umroh`);

--
-- Indeks untuk tabel `produk_umroh_hotel`
--
ALTER TABLE `produk_umroh_hotel`
  ADD PRIMARY KEY (`id_produk_umroh_hotel`);

--
-- Indeks untuk tabel `produk_umroh_maskapai`
--
ALTER TABLE `produk_umroh_maskapai`
  ADD PRIMARY KEY (`id_umorh_maskapai`);

--
-- Indeks untuk tabel `tentang_kami`
--
ALTER TABLE `tentang_kami`
  ADD PRIMARY KEY (`id_post`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin_history_login`
--
ALTER TABLE `admin_history_login`
  MODIFY `id_ahl` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `brosur`
--
ALTER TABLE `brosur`
  MODIFY `id_brosur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `galeri_foto`
--
ALTER TABLE `galeri_foto`
  MODIFY `id_galeri_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `galeri_video`
--
ALTER TABLE `galeri_video`
  MODIFY `id_galery_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id_hotel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `maskapai`
--
ALTER TABLE `maskapai`
  MODIFY `id_maskapai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `produk_umroh`
--
ALTER TABLE `produk_umroh`
  MODIFY `id_produk_umroh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `produk_umroh_hotel`
--
ALTER TABLE `produk_umroh_hotel`
  MODIFY `id_produk_umroh_hotel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `produk_umroh_maskapai`
--
ALTER TABLE `produk_umroh_maskapai`
  MODIFY `id_umorh_maskapai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tentang_kami`
--
ALTER TABLE `tentang_kami`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
