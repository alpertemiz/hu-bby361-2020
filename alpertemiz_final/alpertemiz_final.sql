-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 12 Oca 2021, 22:58:23
-- Sunucu sürümü: 10.1.21-MariaDB
-- PHP Sürümü: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `alpertemiz_02`
--
CREATE DATABASE IF NOT EXISTS `alpertemiz_final` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `alpertemiz_final`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitap`
--

CREATE TABLE `kitap` (
  `kitapNo` int(11) NOT NULL COMMENT 'Kitap tablosunun ana anahtarı',
  `kitapKayitTarih` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'kitabın veri tabanına kayıt tarihi',
  `kitapAdi` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'kitabın tam adı',
  `ISBN` varchar(13) COLLATE utf8_unicode_ci NOT NULL COMMENT '13 haneli ISBN bilgisi',
  `kitapBasimYer` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'kitabın basım yeri',
  `kitapBasimTarih` year(4) NOT NULL COMMENT 'kitabın basım yılı',
  `yayineviKayitNo` int(11) NOT NULL COMMENT 'Yayınevi Numarası Bilgisi',
  `yazarKayitNo` int(11) NOT NULL COMMENT 'yazar numara bilgisi',
  `eserAciklama` text CHARACTER SET utf8mb4 NOT NULL COMMENT 'Eserin Aciklamasi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Kitap Bilgisi';

--
-- Tablo döküm verisi `kitap`
--

INSERT INTO `kitap` (`kitapNo`, `kitapKayitTarih`, `kitapAdi`, `ISBN`, `kitapBasimYer`, `kitapBasimTarih`, `yayineviKayitNo`, `yazarKayitNo`, `eserAciklama`) VALUES
(1, '2020-11-03 14:32:49', 'Kumarbaz', '9789750515477', 'İstanbul', 2014, 9, 10, 'Dostoyevski\'nin gençlik yıllarını, dramatik aşk ve kumar tutkusunu en yalın hali ile kaleme aldığı yapıtlarından biridir.'),
(2, '2020-11-03 15:44:01', 'Hayvan Çiftliği', '9789750719387', 'İstanbul', 1984, 8, 9, 'Mecazi bir dille yazılmış, fabl tarzındaki siyasi hiciv romanı.'),
(3, '2020-11-03 15:46:42', 'Körlük', '9786052980811', 'İstanbul', 2017, 8, 8, 'Körlüğün salgın hastalık gibi yayıldığı bir toplumda korku ve paniğin hakim olması sonucu ahlaki değerlerin çökmesidir.'),
(4, '2020-11-03 15:49:56', 'Son Cüret', '9786254440489', 'İstanbul', 2020, 7, 7, 'Atatürk ve Milli Mücadele ile ilgili konuların yer verildiği romandır.'),
(5, '2020-11-03 15:52:14', 'Fareler ve İnsanlar', '9789755705859', 'İstanbul', 2012, 7, 6, 'İki gezgin çiftlik işçisi olan George Milton ve Lennie Small\'un büyük bunalım sırasında Kaliforniya\'da yaşadıkları trajik olayları anlatır.'),
(6, '2020-11-03 15:56:33', 'Kitapları Kurtaran Kedi', '9786057717610', 'İstanbul', 2014, 5, 5, 'Kitapların da bir yüreği olduğunu ve başkalarını düşünen bir yüreğin gücüyle insanların mutlu bir hayata gülümseyebileceklerini bizlere hatırlatan bir roman.'),
(7, '2020-11-03 15:59:17', 'Şeker Portakalı', '9789750738609', 'İstanbul', 2007, 3, 4, 'Brezilya\'da fakir bir ailenin beş yaşındaki oğlu olan hayal gücü çok gelişmiş Zeze adlı çocuğun başından geçenleri konu edinir.'),
(8, '2020-11-03 16:02:23', 'Son Sığınak', '9786257231022', 'İstanbul', 2020, 3, 3, 'Roman gezici bir tiyatro kumpanyasının kuruluşunu, ilden ile gezişini ve sonunda dağılışını anlatıyor.'),
(9, '2020-11-03 16:05:08', 'Cesur Yeni Dünya', '9789756902165', 'İstanbul', 2003, 2, 2, 'Romanın kurgusu Londra\'da 26. yüzyılda geçmektedir ve distopik bir atmosfer mevcuttur.'),
(10, '2020-11-03 16:07:22', 'Kendi Yatağımda Uyumayacağım!', '9786052169568', 'İstanbul', 2019, 1, 1, 'Anne babasının güvenli yatağında yatmaya alışmış 3 ile altı yaşları arasındaki bir çocuk kendi yatağında yatmayı gerekli görmeyebilir konulu romanıdır.'),
(21, '2021-01-12 21:37:11', '', '', '', 0000, 1, 1, '');

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `kitapliste`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `kitapliste` (
`KitapAdi` varchar(200)
,`AdSoyad` varchar(101)
,`yayineviAdi` varchar(100)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `yayineviliste`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `yayineviliste` (
`yayineviAdi` varchar(100)
,`kitapBasimYer` varchar(50)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayınevi`
--

CREATE TABLE `yayınevi` (
  `yayineviKayitNo` smallint(11) NOT NULL COMMENT 'Yayınevi Numarası Bilgisi',
  `yayineviKayitTarih` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Yayınevi Kayıt Tarihi Bilgisi',
  `yayineviAdi` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevinin Adı Bilgisi',
  `yayineviURL` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevi İnternet Sitesi Bilgisi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Yayınevi bilgisi';

--
-- Tablo döküm verisi `yayınevi`
--

INSERT INTO `yayınevi` (`yayineviKayitNo`, `yayineviKayitTarih`, `yayineviAdi`, `yayineviURL`) VALUES
(1, '2020-11-03 15:23:40', ' İletişim Yayıncılık', 'https://www.idefix.com/Yayinevi/iletisim-yayincilik/s=4918'),
(2, '2020-11-03 15:44:42', 'Can Yayınları', 'https://www.idefix.com/Yayinevi/can-yayinlari/s=1883'),
(3, '2020-11-03 15:47:19', 'Kırmızı Kedi', 'https://www.idefix.com/Yayinevi/kirmizi-kedi/s=5566'),
(4, '2020-11-03 15:50:31', 'Sia', 'https://www.idefix.com/Yayinevi/sia/s=10004611'),
(5, '2020-11-03 15:52:43', 'Sel Yayıncılık', 'https://www.idefix.com/Yayinevi/sel-yayincilik/s=8753'),
(6, '2020-11-03 15:57:13', 'Turkuvaz Kitap\r\n', 'https://www.idefix.com/Yayinevi/turkuvaz-kitap/s=26386'),
(7, '2020-11-03 15:59:50', 'Can Çocuk Yayınları', 'https://www.idefix.com/Yayinevi/can-cocuk-yayinlari/s=1881'),
(8, '2020-11-03 16:03:01', 'Turkuvaz Kitap', 'https://www.idefix.com/Yayinevi/turkuvaz-kitap/s=26386'),
(9, '2020-11-03 16:05:36', 'İthaki Yayınları', 'https://www.idefix.com/Yayinevi/ithaki-yayinlari/s=5119'),
(10, '2020-11-03 16:07:46', 'Turkuvaz Kitap', 'https://www.idefix.com/Yayinevi/turkuvaz-kitap/s=26386'),
(13, '2021-01-12 21:42:06', 'A', 'AS');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazar`
--

CREATE TABLE `yazar` (
  `yazarKayitNo` smallint(11) NOT NULL COMMENT 'yazar numara bilgisi',
  `yazarKayitTarih` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'yazar kayıt bilgisi',
  `yazarAdi` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'yazar adı bilgisi',
  `yazarSoyadi` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'yazar soyadı bilgisi',
  `yazarURL` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'yazar URL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Yazar bilgisi';

--
-- Tablo döküm verisi `yazar`
--

INSERT INTO `yazar` (`yazarKayitNo`, `yazarKayitTarih`, `yazarAdi`, `yazarSoyadi`, `yazarURL`) VALUES
(1, '2020-11-03 15:13:57', 'Fyodor Mihayloviç', 'Dostoyevski', 'https://tr.wikipedia.org/wiki/Fyodor_Dostoyevski'),
(2, '2020-11-03 15:45:24', 'George ', 'Orwel', 'https://www.idefix.com/Yazar/george-orwell/s=253774'),
(3, '2020-11-03 15:49:01', 'Jose ', 'Saramago', 'https://tr.wikipedia.org/wiki/José_Saramago'),
(4, '2020-11-03 15:51:12', 'Yılmaz ', 'Özdil', 'https://www.idefix.com/Yazar/yilmaz-ozdil/s=265160'),
(5, '2020-11-03 15:53:16', 'Johnn', 'Steinbeck', 'https://www.idefix.com/Yazar/john-steinbeck/s=171913'),
(6, '2020-11-03 15:58:19', 'Hasan Can', 'Erkin', 'https://www.idefix.com/Yazar/h--can-erkin/s=10092663'),
(7, '2020-11-03 16:01:00', 'Jose Mauro De Vasconcelos', 'De Vasconcelos', 'https://www.idefix.com/Yazar/jose-mauro-de-vasconcelos/s=217923'),
(8, '2020-11-03 16:04:10', 'Hasan', 'Nuhanoviç', 'https://www.idefix.com/yazarlar'),
(9, '2020-11-03 16:06:07', 'Aldous ', 'Huxley', 'https://www.idefix.com/Yazar/aldous-huxley/s=171948'),
(10, '2020-11-03 16:08:15', 'Alberto', 'Pellai', 'https://www.idefix.com/Yazar/alberto-pellai/s=10086755');

-- --------------------------------------------------------

--
-- Görünüm yapısı `kitapliste`
--
DROP TABLE IF EXISTS `kitapliste`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kitapliste`  AS  select `k`.`kitapAdi` AS `KitapAdi`,concat(`ya`.`yazarAdi`,' ',`ya`.`yazarSoyadi`) AS `AdSoyad`,`y`.`yayineviAdi` AS `yayineviAdi` from ((`kitap` `k` join `yayınevi` `y`) join `yazar` `ya`) where ((`k`.`yayineviKayitNo` = `y`.`yayineviKayitNo`) and (`k`.`yazarKayitNo` = `ya`.`yazarKayitNo`)) ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `yayineviliste`
--
DROP TABLE IF EXISTS `yayineviliste`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `yayineviliste`  AS  select `y`.`yayineviAdi` AS `yayineviAdi`,`k`.`kitapBasimYer` AS `kitapBasimYer` from ((`kitap` `k` join `yayınevi` `y`) join `yazar` `ya`) where ((`k`.`yayineviKayitNo` = `y`.`yayineviKayitNo`) and (`k`.`yazarKayitNo` = `ya`.`yazarKayitNo`)) ;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kitap`
--
ALTER TABLE `kitap`
  ADD PRIMARY KEY (`kitapNo`);

--
-- Tablo için indeksler `yayınevi`
--
ALTER TABLE `yayınevi`
  ADD PRIMARY KEY (`yayineviKayitNo`);

--
-- Tablo için indeksler `yazar`
--
ALTER TABLE `yazar`
  ADD PRIMARY KEY (`yazarKayitNo`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kitap`
--
ALTER TABLE `kitap`
  MODIFY `kitapNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Kitap tablosunun ana anahtarı', AUTO_INCREMENT=23;
--
-- Tablo için AUTO_INCREMENT değeri `yayınevi`
--
ALTER TABLE `yayınevi`
  MODIFY `yayineviKayitNo` smallint(11) NOT NULL AUTO_INCREMENT COMMENT 'Yayınevi Numarası Bilgisi', AUTO_INCREMENT=14;
--
-- Tablo için AUTO_INCREMENT değeri `yazar`
--
ALTER TABLE `yazar`
  MODIFY `yazarKayitNo` smallint(11) NOT NULL AUTO_INCREMENT COMMENT 'yazar numara bilgisi', AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
