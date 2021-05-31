-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 31, 2021 alle 18:34
-- Versione del server: 10.4.17-MariaDB
-- Versione PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shop`
--
CREATE DATABASE IF NOT EXISTS `db_shop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_shop`;

-- --------------------------------------------------------

--
-- Struttura della tabella `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `adminPass` varchar(150) NOT NULL,
  `level` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminUser`, `adminEmail`, `adminPass`, `level`) VALUES
(1, 'Emon Chowdhury', 'admin', 'admin@mail.com', '21232f297a57a5a743894a0e4a801fc3', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `tbl_area`
--

DROP TABLE IF EXISTS `tbl_area`;
CREATE TABLE `tbl_area` (
  `area_id` int(11) NOT NULL,
  `area_name` varchar(100) NOT NULL,
  `city` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `tbl_area`
--

INSERT INTO `tbl_area` (`area_id`, `area_name`, `city`) VALUES
(1, 'Agrabad', '1'),
(2, 'GEC Circle', '1'),
(3, 'Muradpur', '1'),
(4, 'Andorkilla', '1'),
(5, 'Mirpur', '2'),
(6, 'Gulshan', '2'),
(7, 'Dhanmondi', '2');

-- --------------------------------------------------------

--
-- Struttura della tabella `tbl_brand`
--

DROP TABLE IF EXISTS `tbl_brand`;
CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(1, ' Acer'),
(2, ' Samsung'),
(3, ' Iphone'),
(4, 'Canon'),
(5, ' Philips');

-- --------------------------------------------------------

--
-- Struttura della tabella `tbl_cart`
--

DROP TABLE IF EXISTS `tbl_cart`;
CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `sId`, `productId`, `productName`, `price`, `quantity`, `image`) VALUES
(2, 'bldeli7dgite5tdp288e9tl1q3', 11, 'Acer Charger Fan', 350.00, 1, 'uploads/d75fecf6e6.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(1, ' Desktop'),
(2, ' Laptop'),
(3, ' Mobile Phones'),
(4, ' Accessories'),
(5, ' Software'),
(6, ' Sports &amp; Fitness'),
(7, ' Footwear'),
(8, ' Jewellery'),
(9, 'Clothing');

-- --------------------------------------------------------

--
-- Struttura della tabella `tbl_city`
--

DROP TABLE IF EXISTS `tbl_city`;
CREATE TABLE `tbl_city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `tbl_city`
--

INSERT INTO `tbl_city` (`city_id`, `city_name`) VALUES
(1, 'Chattogram'),
(2, 'Dhaka'),
(3, 'Sylhet'),
(4, 'Khulna'),
(5, 'Rajshahi');

-- --------------------------------------------------------

--
-- Struttura della tabella `tbl_compare`
--

DROP TABLE IF EXISTS `tbl_compare`;
CREATE TABLE `tbl_compare` (
  `compareId` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `tbl_customer`
--

DROP TABLE IF EXISTS `tbl_customer`;
CREATE TABLE `tbl_customer` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_address` text NOT NULL,
  `c_city` varchar(30) NOT NULL,
  `c_area` varchar(30) NOT NULL,
  `c_zip` varchar(30) NOT NULL,
  `c_phone` varchar(30) NOT NULL,
  `c_email` varchar(255) NOT NULL,
  `c_pass` varchar(32) NOT NULL,
  `c_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `tbl_customer`
--

INSERT INTO `tbl_customer` (`c_id`, `c_name`, `c_address`, `c_city`, `c_area`, `c_zip`, `c_phone`, `c_email`, `c_pass`, `c_status`) VALUES
(1, 'Rahul Joy', '335,Baker Billa House.', '1', '1', '420', '01846467908', 'rahul@gmail.com', '202cb962ac59075b964b07152d234b70', 1),
(2, 'Maikel', 'Dewanhat', '1', '1', '445', '01929255500', 'mikel@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 1),
(3, 'Kabir Singh', '12/A ,D-Block', '2', '7', '570', '01700688508', 'ks@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE `tbl_order` (
  `orderId` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `tbl_order`
--

INSERT INTO `tbl_order` (`orderId`, `cmrId`, `productId`, `productName`, `quantity`, `price`, `image`, `date`, `status`) VALUES
(4, 1, 4, 'Smart TV', 1, 403.66, 'uploads/845ab05fb0.jpg', '2019-06-17 07:34:14', 0),
(5, 1, 8, 'DSLR Camera', 1, 420.60, 'uploads/7226e2a625.jpg', '2019-06-17 07:38:37', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `body` text NOT NULL,
  `price` float(10,3) NOT NULL,
  `image` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `body`, `price`, `image`, `keywords`, `type`) VALUES
(1, 'Philips Dry Iron', 4, 5, '<p>The product description will be here.The product description will be here.The product description will be here.The product description will be here.The product description will be here.The product description will be here.The product description will be here.The product description will be here.The product description will be here.The product description will be here.</p>', 505.220, 'uploads/09546abb10.png', 'Philips,Dry Iron', 0),
(2, 'LED HD TV', 4, 2, '<p>The product description will be here.The product description will be here.The product description will be here.The product description will be here.The product description will be here.The product description will be here.The product description will be here.The product description will be here.The product description will be here.The product description will be here.</p>', 550.000, 'uploads/4a25466214.jpg', 'Tv,HD Tv,LED', 1),
(3, 'Blender Machine', 4, 5, '<p>The product description will be here.The product description will be here.The product description will be here.The product description will be here.The product description will be here.The product description will be here.The product description will be here.The product description will be here.</p>', 230.970, 'uploads/f680b4ca87.png', 'Blender,Canon', 1),
(4, 'Smart TV', 4, 2, '<p>The product description will be here.The product description will be here.The product description will be here.The product description will be here.The product description will be here.The product description will be here.The product description will be here.The product description will be here.</p>', 403.660, 'uploads/845ab05fb0.jpg', 'Samsung,Tv', 0),
(8, 'DSLR Camera', 4, 4, '<p>Camera specifications will be give later</p>', 420.600, 'uploads/7226e2a625.jpg', 'Canon,Camera,DSLR', 1),
(9, 'Iphone 5s', 3, 3, '<p>High configuration features phone with latest technologies</p>', 750.000, 'uploads/af8afc2712.jpg', 'Iphone,Mobile', 0),
(10, 'Refrigerator(RT36FDJF)', 4, 2, '<p>Digital Inverter Compressor ,Multi Storage Box,Digital Display Panel,seperate ice box and many more.</p>', 980.000, 'uploads/60c40833d1.jpg', 'Samsung,Fridge,Refrigerator', 0),
(11, 'Acer Charger Fan', 4, 1, '<p>Rechargeable fan with 4 hours backup</p>', 350.000, 'uploads/d75fecf6e6.jpg', 'Acer,Fan,Charger Fan', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `tbl_rating`
--

DROP TABLE IF EXISTS `tbl_rating`;
CREATE TABLE `tbl_rating` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `tbl_rating`
--

INSERT INTO `tbl_rating` (`id`, `cmrId`, `productId`, `rating`) VALUES
(1, 1, 9, 3),
(2, 2, 9, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `tbl_wlist`
--

DROP TABLE IF EXISTS `tbl_wlist`;
CREATE TABLE `tbl_wlist` (
  `wlistId` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(100) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indici per le tabelle `tbl_area`
--
ALTER TABLE `tbl_area`
  ADD PRIMARY KEY (`area_id`);

--
-- Indici per le tabelle `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indici per le tabelle `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indici per le tabelle `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indici per le tabelle `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indici per le tabelle `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`compareId`);

--
-- Indici per le tabelle `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`c_id`);

--
-- Indici per le tabelle `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`orderId`);

--
-- Indici per le tabelle `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Indici per le tabelle `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  ADD PRIMARY KEY (`wlistId`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `tbl_area`
--
ALTER TABLE `tbl_area`
  MODIFY `area_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT per la tabella `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT per la tabella `tbl_city`
--
ALTER TABLE `tbl_city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `compareId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT per la tabella `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  MODIFY `wlistId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
