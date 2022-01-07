-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 07 Oca 2022, 22:54:05
-- Sunucu sürümü: 10.4.18-MariaDB
-- PHP Sürümü: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `e_commerce`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin_login`
--

CREATE TABLE `admin_login` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `admin_login`
--

INSERT INTO `admin_login` (`user_id`, `user_name`, `user_password`) VALUES
(1, 'admin', 'admin'),
(2, 'abbas', '123');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orders`
--

CREATE TABLE `orders` (
  `order_id` int(250) NOT NULL,
  `p_names` varchar(250) NOT NULL,
  `cus_name` varchar(250) NOT NULL,
  `contact_no` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `country` varchar(250) NOT NULL,
  `details` varchar(250) NOT NULL,
  `zip_code` int(250) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `quantity` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `product_id` int(250) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `details` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `product_type` varchar(250) NOT NULL,
  `price` int(250) NOT NULL,
  `c_price` int(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `tags` varchar(250) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `details`, `image`, `product_type`, `price`, `c_price`, `brand`, `tags`, `time`) VALUES
(1, 'Apple Cap', 'New Apple cap', '1543939043_Capture.PNG', 'dress', 300, 3500, 'polo', 'summer', '2018-12-04 13:08:54'),
(2, 'Apple Shirt', 'New Design', '1543939232_Projects in php.PNG', 'dress', 300, 3500, 'dress', 'summer', '2018-12-04 13:08:54'),
(3, 'Apple', 'New', '1543939563_1464105942_best-oriflame-skin-care-products-for-oily-skin-in-india-4.png', 'shirt', 300, 3500, 'polo', 'summer', '2018-12-04 13:08:54'),
(4, 'Aplle ', 'dssk', '1543939609_1464197529_dl-305.jpg', 'dress', 300, 3500, 'polo', 'summer', '2018-12-04 13:08:54'),
(5, 'Aple', 'nee', '1543939758_1464198048_dl-310.jpg', 'dress', 300, 3500, 'polo', 'summer', '2018-12-04 13:09:18');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`user_id`);

--
-- Tablo için indeksler `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(250) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
