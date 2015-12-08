-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:31:53
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
-- Estructura de tabla para la tabla `public_noticias`
--

CREATE TABLE IF NOT EXISTS `public_noticias` (
  `id` int(10) unsigned NOT NULL,
  `txtnoticia` longtext CHARACTER SET utf8,
  `fecha` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `autor` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `expira` int(11) DEFAULT NULL,
  `tiponoticia` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `mensaje` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `aprobado` int(11) DEFAULT NULL,
  `fechapublicacion` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechapropuesta` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fexpira` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iduser` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_noticias`
--
ALTER TABLE `public_noticias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_noticias`
--
ALTER TABLE `public_noticias`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
