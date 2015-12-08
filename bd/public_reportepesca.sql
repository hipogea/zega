-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:45:50
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
-- Estructura de tabla para la tabla `public_reportepesca`
--

CREATE TABLE IF NOT EXISTS `public_reportepesca` (
  `codep` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `id` int(11) NOT NULL,
  `semana` int(11) DEFAULT NULL,
  `fecha` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `harribo` longtext CHARACTER SET utf8,
  `hzarpe` longtext CHARACTER SET utf8,
  `codplantadestino` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `codplantazarpe` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `declarada` int(11) DEFAULT NULL,
  `descargada` double DEFAULT NULL,
  `d2` int(11) DEFAULT NULL,
  `codzarpe` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `r1` int(11) DEFAULT NULL,
  `r2` int(11) DEFAULT NULL,
  `r3` int(11) DEFAULT NULL,
  `r4` int(11) DEFAULT NULL,
  `r5` int(11) DEFAULT NULL,
  `r6` int(11) DEFAULT NULL,
  `r7` int(11) DEFAULT NULL,
  `r8` int(11) DEFAULT NULL,
  `r9` int(11) DEFAULT NULL,
  `r10` int(11) DEFAULT NULL,
  `r11` int(11) DEFAULT NULL,
  `r12` int(11) DEFAULT NULL,
  `zona` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `idespecie` int(11) DEFAULT NULL,
  `idtemporada` int(11) DEFAULT NULL,
  `comenatrio` longtext CHARACTER SET utf8,
  `latitud` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `meridiano` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `zonapesca` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `evento` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `fechazarpe` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechaarribo` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descargada1` double DEFAULT NULL,
  `capbodega` int(11) DEFAULT NULL,
  `zonalitoral` varchar(3) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_reportepesca`
--
ALTER TABLE `public_reportepesca`
  ADD PRIMARY KEY (`id`), ADD KEY `fki_trt` (`idespecie`), ADD KEY `fki_plantadetino` (`codplantadestino`), ADD KEY `fki_tempora` (`idtemporada`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
