-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:04:53
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
-- Estructura de tabla para la tabla `public_conformidades`
--

CREATE TABLE IF NOT EXISTS `public_conformidades` (
  `idconfomidad` bigint(20) NOT NULL,
  `iddetallecoti` bigint(20) NOT NULL,
  `iddetallecoti_d` bigint(20) NOT NULL,
  `fraccion` double NOT NULL,
  `fechacreacion` char(19) COLLATE utf8_unicode_ci NOT NULL,
  `monto` double NOT NULL,
  `numerodocumento` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `coddocu` varchar(3) CHARACTER SET utf8 NOT NULL,
  `creado` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificado` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `final` int(11) NOT NULL,
  `atendido` int(11) NOT NULL,
  `cotizacion` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `itemcot` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `fecha` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codestado` varchar(2) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_conformidades`
--
ALTER TABLE `public_conformidades`
  ADD PRIMARY KEY (`idconfomidad`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
