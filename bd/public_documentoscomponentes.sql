-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:19:26
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
-- Estructura de tabla para la tabla `public_documentoscomponentes`
--

CREATE TABLE IF NOT EXISTS `public_documentoscomponentes` (
  `iddoc` bigint(20) NOT NULL,
  `numdoc` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `fedoc` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ndirec` bigint(20) DEFAULT NULL,
  `obs` longtext CHARACTER SET utf8,
  `coddocu` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `codigo` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `activo` bigint(20) DEFAULT NULL,
  `codestadodoc` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `modificado` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `creado` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_documentoscomponentes`
--
ALTER TABLE `public_documentoscomponentes`
  ADD PRIMARY KEY (`iddoc`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
