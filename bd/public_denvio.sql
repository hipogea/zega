-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:09:12
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
-- Estructura de tabla para la tabla `public_denvio`
--

CREATE TABLE IF NOT EXISTS `public_denvio` (
  `hnenvio` varchar(6) CHARACTER SET utf8 NOT NULL,
  `c_itenvio` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `c_codart` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `c_descri` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `ncanti` double DEFAULT NULL,
  `c_codep` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `c_codpadre` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `cafijo` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `c_estenvio` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `ndenvio` bigint(20) DEFAULT NULL,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_denvio`
--
ALTER TABLE `public_denvio`
  ADD PRIMARY KEY (`hnenvio`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
