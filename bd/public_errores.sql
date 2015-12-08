-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:21:54
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
-- Estructura de tabla para la tabla `public_errores`
--

CREATE TABLE IF NOT EXISTS `public_errores` (
  `usuario` varchar(35) CHARACTER SET utf8 NOT NULL,
  `sesion` int(11) NOT NULL,
  `numeroerror` int(11) DEFAULT NULL,
  `textoservidor` longtext CHARACTER SET utf8,
  `mensaje` longtext CHARACTER SET utf8,
  `aliastabla` varchar(70) CHARACTER SET utf8 DEFAULT NULL,
  `nombretabla` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `ip` longtext CHARACTER SET utf8,
  `aliascampo` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `nombrecampo` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `tiempo` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_errores`
--
ALTER TABLE `public_errores`
  ADD PRIMARY KEY (`usuario`,`sesion`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
