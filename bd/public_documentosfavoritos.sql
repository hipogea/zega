-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:19:56
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
-- Estructura de tabla para la tabla `public_documentosfavoritos`
--

CREATE TABLE IF NOT EXISTS `public_documentosfavoritos` (
  `id` bigint(20) NOT NULL,
  `codocu` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `hidocu` bigint(20) NOT NULL,
  `iduser` int(11) NOT NULL,
  `nombre` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `texto` text COLLATE utf8_unicode_ci NOT NULL,
  `column_7` int(11) NOT NULL,
  `compartido` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_documentosfavoritos`
--
ALTER TABLE `public_documentosfavoritos`
  ADD PRIMARY KEY (`id`), ADD KEY `codocu` (`codocu`), ADD KEY `hidocu` (`hidocu`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_documentosfavoritos`
--
ALTER TABLE `public_documentosfavoritos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
