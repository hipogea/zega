-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:06:41
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
-- Estructura de tabla para la tabla `public_coordocs`
--

CREATE TABLE IF NOT EXISTS `public_coordocs` (
  `id` int(11) NOT NULL,
  `xgeneral` int(5) NOT NULL,
  `ygeneral` int(5) NOT NULL,
  `xlogo` int(5) NOT NULL,
  `ylogo` int(11) NOT NULL,
  `codocu` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `codcen` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `modelo` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `nombrereporte` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `detalle` text COLLATE utf8_unicode_ci NOT NULL,
  `campofiltro` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tamanopapel` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `x_grilla` int(11) NOT NULL,
  `y_grilla` int(11) NOT NULL,
  `registrosporpagina` int(11) NOT NULL,
  `estilo` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `tienepie` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `tienelogo` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `sociedad` int(11) NOT NULL,
  `campoestado` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_coordocs`
--
ALTER TABLE `public_coordocs`
  ADD PRIMARY KEY (`id`), ADD KEY `fk_coordocu` (`codocu`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_coordocs`
--
ALTER TABLE `public_coordocs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
