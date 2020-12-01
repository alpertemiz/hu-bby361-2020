-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 01 Ara 2020, 18:24:14
-- Sunucu sürümü: 10.1.21-MariaDB
-- PHP Sürümü: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `alpertemiz_01`
--
CREATE DATABASE IF NOT EXISTS `alpertemiz_02` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `alpertemiz_02`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitap`
--

CREATE TABLE `kitap` (
  `KitapNo` smallint(6) NOT NULL COMMENT 'Kitap tablosunun ana anahtarı',
  `KitapKayıtTarih` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'kitabın veri tabanına kayıt tarihi',
  `KitapAdı` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'kitabın tam adı',
  `ISBN` varchar(13) COLLATE utf8_unicode_ci NOT NULL COMMENT '13 haneli ISBN bilgisi',
  `KitapBasımYer` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'kitabın basım yeri',
  `KitapBasımTarih` year(4) NOT NULL COMMENT 'kitabın basım yılı',
  `yayıneviKayıtNo` int(11) NOT NULL COMMENT 'Yayınevi Numarası Bilgisi',
  `yazarKayıtNo` int(11) NOT NULL COMMENT 'yazar numara bilgisi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Kitap Bilgisi';

--
-- Tablo döküm verisi `kitap`
--

INSERT INTO `kitap` (`KitapNo`, `KitapKayıtTarih`, `KitapAdı`, `ISBN`, `KitapBasımYer`, `KitapBasımTarih`, `yayıneviKayıtNo`, `yazarKayıtNo`) VALUES
(1, '2020-11-03 14:32:49', 'Kumarbaz', '9789750515477', 'İstanbul', 2014, 9, 10),
(4, '2020-11-03 15:44:01', 'Hayvan Çiftliği', '9789750719387', 'İstanbul', 1984, 8, 9),
(5, '2020-11-03 15:46:42', 'Körlük', '9786052980811', 'İstanbul', 2017, 8, 8),
(6, '2020-11-03 15:49:56', 'Son Cüret', '9786254440489', 'İstanbul', 2020, 7, 7),
(7, '2020-11-03 15:52:14', 'Fareler ve İnsanlar', '9789755705859', 'İstanbul', 2012, 7, 6),
(8, '2020-11-03 15:56:33', 'Kitapları Kurtaran Kedi', '9786057717610', 'İstanbul', 2014, 5, 5),
(9, '2020-11-03 15:59:17', 'Şeker Portakalı', '9789750738609', 'İstanbul', 2000, 3, 4),
(10, '2020-11-03 16:02:23', 'Son Sığınak', '9786257231022', 'İstanbul', 2020, 3, 3),
(11, '2020-11-03 16:05:08', 'Cesur Yeni Dünya', '9789756902165', 'İstanbul', 2003, 2, 2),
(12, '2020-11-03 16:07:22', 'Kendi Yatağımda Uyumayacağım!', '9786052169568', 'İstanbul', 2019, 1, 1);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `kitaplistesi`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `kitaplistesi` (
`KitapAdı` varchar(200)
,`yayıneviAdı` varchar(100)
,`yazarAdı` varchar(50)
,`yazarSoyadı` varchar(50)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayınevi`
--

CREATE TABLE `yayınevi` (
  `yayıneviKayıtNo` smallint(11) NOT NULL COMMENT 'Yayınevi Numarası Bilgisi',
  `yayıneviKayıtTarih` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Yayınevi Kayıt Tarihi Bilgisi',
  `yayıneviAdı` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevinin Adı Bilgisi',
  `yeURL` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevi İnternet Sitesi Bilgisi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Yayınevi bilgisi';

--
-- Tablo döküm verisi `yayınevi`
--

INSERT INTO `yayınevi` (`yayıneviKayıtNo`, `yayıneviKayıtTarih`, `yayıneviAdı`, `yeURL`) VALUES
(1, '2020-11-03 15:23:40', ' İletişim Yayıncılık', 'https://www.idefix.com/Yayinevi/iletisim-yayincilik/s=4918'),
(2, '2020-11-03 15:44:42', 'Can Yayınları', 'https://www.idefix.com/Yayinevi/can-yayinlari/s=1883'),
(3, '2020-11-03 15:47:19', 'Kırmızı Kedi', 'https://www.idefix.com/Yayinevi/kirmizi-kedi/s=5566'),
(4, '2020-11-03 15:50:31', 'Sia', 'https://www.idefix.com/Yayinevi/sia/s=10004611'),
(5, '2020-11-03 15:52:43', 'Sel Yayıncılık', 'https://www.idefix.com/Yayinevi/sel-yayincilik/s=8753'),
(6, '2020-11-03 15:57:13', 'Turkuvaz Kitap\r\n', 'https://www.idefix.com/Yayinevi/turkuvaz-kitap/s=26386'),
(7, '2020-11-03 15:59:50', 'Can Çocuk Yayınları', 'https://www.idefix.com/Yayinevi/can-cocuk-yayinlari/s=1881'),
(8, '2020-11-03 16:03:01', 'Turkuvaz Kitap', 'https://www.idefix.com/Yayinevi/turkuvaz-kitap/s=26386'),
(9, '2020-11-03 16:05:36', 'İthaki Yayınları', 'https://www.idefix.com/Yayinevi/ithaki-yayinlari/s=5119'),
(10, '2020-11-03 16:07:46', 'Turkuvaz Kitap', 'https://www.idefix.com/Yayinevi/turkuvaz-kitap/s=26386');

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `yayınevleri`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `yayınevleri` (
`yayıneviAdı` varchar(100)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazar`
--

CREATE TABLE `yazar` (
  `yazarKayıtNo` smallint(11) NOT NULL COMMENT 'yazar numara bilgisi',
  `yazarKayıtTarih` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'yazar kayıt bilgisi',
  `yazarAdı` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'yazar adı bilgisi',
  `yazarSoyadı` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'yazar soyadı bilgisi',
  `yazarURL` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'yazar URL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Yazar bilgisi';

--
-- Tablo döküm verisi `yazar`
--

INSERT INTO `yazar` (`yazarKayıtNo`, `yazarKayıtTarih`, `yazarAdı`, `yazarSoyadı`, `yazarURL`) VALUES
(1, '2020-11-03 15:13:57', 'Fyodor Mihayloviç', 'Dostoyevski', 'https://tr.wikipedia.org/wiki/Fyodor_Dostoyevski'),
(2, '2020-11-03 15:45:24', 'George ', 'Orwell', 'https://www.idefix.com/Yazar/george-orwell/s=253774'),
(3, '2020-11-03 15:49:01', 'Jose ', 'Saramago', 'https://tr.wikipedia.org/wiki/José_Saramago'),
(4, '2020-11-03 15:51:12', 'Yılmaz ', 'Özdil', 'https://www.idefix.com/Yazar/yilmaz-ozdil/s=265160'),
(5, '2020-11-03 15:53:16', 'John ', 'Steinbeck', 'https://www.idefix.com/Yazar/john-steinbeck/s=171913'),
(6, '2020-11-03 15:58:19', 'Hasan Can', 'Erkin', 'https://www.idefix.com/Yazar/h--can-erkin/s=10092663'),
(7, '2020-11-03 16:01:00', 'Jose Mauro De Vasconcelos', 'De Vasconcelos', 'https://www.idefix.com/Yazar/jose-mauro-de-vasconcelos/s=217923'),
(8, '2020-11-03 16:04:10', 'Hasan ', 'Nuhanoviç', 'https://www.idefix.com/yazarlar'),
(9, '2020-11-03 16:06:07', 'Aldous ', 'Huxley', 'https://www.idefix.com/Yazar/aldous-huxley/s=171948'),
(10, '2020-11-03 16:08:15', 'Alberto ', 'Pellai', 'https://www.idefix.com/Yazar/alberto-pellai/s=10086755');

-- --------------------------------------------------------

--
-- Görünüm yapısı `kitaplistesi`
--
DROP TABLE IF EXISTS `kitaplistesi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kitaplistesi`  AS  select `k`.`KitapAdı` AS `KitapAdı`,`y`.`yayıneviAdı` AS `yayıneviAdı`,`ya`.`yazarAdı` AS `yazarAdı`,`ya`.`yazarSoyadı` AS `yazarSoyadı` from ((`kitap` `k` join `yayınevi` `y`) join `yazar` `ya`) where ((`k`.`yayıneviKayıtNo` = `y`.`yayıneviKayıtNo`) and (`k`.`yazarKayıtNo` = `ya`.`yazarKayıtNo`)) ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `yayınevleri`
--
DROP TABLE IF EXISTS `yayınevleri`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `yayınevleri`  AS  select `yayınevi`.`yayıneviAdı` AS `yayıneviAdı` from `yayınevi` ;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kitap`
--
ALTER TABLE `kitap`
  ADD PRIMARY KEY (`KitapNo`);

--
-- Tablo için indeksler `yayınevi`
--
ALTER TABLE `yayınevi`
  ADD PRIMARY KEY (`yayıneviKayıtNo`);

--
-- Tablo için indeksler `yazar`
--
ALTER TABLE `yazar`
  ADD PRIMARY KEY (`yazarKayıtNo`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kitap`
--
ALTER TABLE `kitap`
  MODIFY `KitapNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Kitap tablosunun ana anahtarı', AUTO_INCREMENT=13;
--
-- Tablo için AUTO_INCREMENT değeri `yayınevi`
--
ALTER TABLE `yayınevi`
  MODIFY `yayıneviKayıtNo` smallint(11) NOT NULL AUTO_INCREMENT COMMENT 'Yayınevi Numarası Bilgisi', AUTO_INCREMENT=11;
--
-- Tablo için AUTO_INCREMENT değeri `yazar`
--
ALTER TABLE `yazar`
  MODIFY `yazarKayıtNo` smallint(11) NOT NULL AUTO_INCREMENT COMMENT 'yazar numara bilgisi', AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
