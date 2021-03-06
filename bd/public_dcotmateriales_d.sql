-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:08:39
-- Versión del servidor: 5.5.42-37.1
-- Versión de PHP: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `neologys_razzo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `public_dcotmateriales_d`
--

CREATE TABLE IF NOT EXISTS `public_dcotmateriales_d` (
  `id` bigint(20) NOT NULL,
  `codart` varchar(8) CHARACTER SET utf8 NOT NULL,
  `disp` varchar(2) CHARACTER SET utf8 NOT NULL,
  `cant` double NOT NULL,
  `punit` double NOT NULL,
  `item` varchar(3) CHARACTER SET utf8 NOT NULL,
  `descri` varchar(40) CHARACTER SET utf8 NOT NULL,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `stock` double DEFAULT NULL,
  `detalle` longtext CHARACTER SET utf8,
  `tipoitem` varchar(1) CHARACTER SET utf8 NOT NULL,
  `estadodetalle` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `coddocu` varchar(3) CHARACTER SET utf8 NOT NULL,
  `um` varchar(3) CHARACTER SET utf8 NOT NULL,
  `hid` bigint(20) DEFAULT NULL,
  `venta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_dcotmateriales_d`
--
ALTER TABLE `public_dcotmateriales_d`
  ADD PRIMARY KEY (`id`), ADD KEY `FKI_DETALLE_D_COTI` (`hid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
