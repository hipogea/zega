-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:04:12
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
-- Estructura de tabla para la tabla `public_clipro`
--

CREATE TABLE IF NOT EXISTS `public_clipro` (
  `codpro` varchar(6) CHARACTER SET utf8 NOT NULL,
  `despro` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `rucpro` varchar(11) CHARACTER SET utf8 NOT NULL,
  `telpro` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `emailpro` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `tipo` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `creadopor` longtext CHARACTER SET utf8,
  `modificadopor` longtext CHARACTER SET utf8,
  `creadoel` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `socio` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `correlativo` int(11) NOT NULL,
  `prefijo` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `codocu` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `nombrecomercial` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `direcciontemp` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `codestado` char(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_clipro`
--
ALTER TABLE `public_clipro`
  ADD PRIMARY KEY (`codpro`), ADD KEY `i_codpro` (`codpro`), ADD KEY `rucpro` (`rucpro`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
