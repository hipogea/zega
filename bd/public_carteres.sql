-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 12:55:48
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
-- Estructura de tabla para la tabla `public_carteres`
--

CREATE TABLE IF NOT EXISTS `public_carteres` (
  `idequipo` int(11) DEFAULT NULL,
  `capacidad` double DEFAULT NULL,
  `tipoaceite` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `horascambio` int(11) DEFAULT NULL,
  `tipocarter` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `haceite` int(11) DEFAULT NULL,
  `hmuestra` int(11) DEFAULT NULL,
  `nummuestras` int(11) DEFAULT NULL,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `fulectura` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fumuestra` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fucambio` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `horometro` int(11) DEFAULT NULL,
  `codigo` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `activo` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `hucambio` int(11) DEFAULT NULL,
  `casco` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_carteres`
--
ALTER TABLE `public_carteres`
  ADD PRIMARY KEY (`id`), ADD KEY `FKI_CSTRES_MAESTRO_` (`tipoaceite`), ADD KEY `fki_FK-CATERES_EQUIPOS` (`idequipo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
