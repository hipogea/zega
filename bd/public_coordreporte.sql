-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:06:58
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
-- Estructura de tabla para la tabla `public_coordreporte`
--

CREATE TABLE IF NOT EXISTS `public_coordreporte` (
  `id` int(11) NOT NULL,
  `codocu` varchar(3) CHARACTER SET utf8 NOT NULL,
  `left_` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `top` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `font_size` varchar(10) COLLATE utf8_unicode_ci DEFAULT '12px',
  `font_family` varchar(11) CHARACTER SET utf8 NOT NULL DEFAULT 'arial',
  `font_weight` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `font_color` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombre_campo` varchar(60) CHARACTER SET utf8 NOT NULL,
  `lbl_left` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lbl_top` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lbl_font_size` varchar(10) COLLATE utf8_unicode_ci DEFAULT '12px',
  `lbl_font_weight` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'bold',
  `lbl_font_family` varchar(35) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'arial',
  `lbl_font_color` varchar(25) CHARACTER SET utf8 NOT NULL DEFAULT '#000',
  `visiblelabel` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `visiblecampo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `hidreporte` int(11) NOT NULL,
  `aliascampo` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `longitudcampo` int(11) NOT NULL,
  `tipodato` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `esdetalle` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `esatributo` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `hidcoordocs` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=462 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_coordreporte`
--
ALTER TABLE `public_coordreporte`
  ADD PRIMARY KEY (`id`), ADD KEY `codocu` (`codocu`), ADD KEY `fk_coordreport` (`hidreporte`), ADD KEY `hidcoordocs` (`hidcoordocs`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_coordreporte`
--
ALTER TABLE `public_coordreporte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=462;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
