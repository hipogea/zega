-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:32:06
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
-- Estructura de tabla para la tabla `public_novedades`
--

CREATE TABLE IF NOT EXISTS `public_novedades` (
  `hidparte` int(11) DEFAULT NULL,
  `codsistema` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `codigosap` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `codigoaf` varchar(13) CHARACTER SET utf8 DEFAULT NULL,
  `descri` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `descridetalle` longtext CHARACTER SET utf8,
  `criticidad` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `idnovedad` int(11) NOT NULL,
  `idpartepesca` bigint(20) DEFAULT NULL,
  `hora` longtext CHARACTER SET utf8,
  `latitud` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `meridiano` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `lugar` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `ultimares` longtext CHARACTER SET utf8,
  `usuario` varchar(25) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_novedades`
--
ALTER TABLE `public_novedades`
  ADD PRIMARY KEY (`idnovedad`), ADD KEY `fki_gffgf` (`idpartepesca`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
