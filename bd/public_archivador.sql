-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 12:51:43
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
-- Estructura de tabla para la tabla `public_archivador`
--

CREATE TABLE IF NOT EXISTS `public_archivador` (
  `id` int(11) NOT NULL,
  `codocu` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `desarchivo` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `obsarchivo` longtext CHARACTER SET utf8,
  `fechasubida` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ndescargas` int(11) DEFAULT NULL,
  `autor` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `nombre` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `peso` double DEFAULT NULL,
  `extension` varchar(7) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_archivador`
--
ALTER TABLE `public_archivador`
  ADD PRIMARY KEY (`id`), ADD KEY `fki_documn` (`codocu`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_archivador`
--
ALTER TABLE `public_archivador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
