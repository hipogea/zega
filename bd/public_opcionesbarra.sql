-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:35:36
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
-- Estructura de tabla para la tabla `public_opcionesbarra`
--

CREATE TABLE IF NOT EXISTS `public_opcionesbarra` (
  `id` int(11) NOT NULL,
  `idope` int(11) NOT NULL,
  `codocu` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `codestado` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `activo` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dialog` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `frame` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_opcionesbarra`
--
ALTER TABLE `public_opcionesbarra`
  ADD PRIMARY KEY (`id`), ADD KEY `idope` (`idope`), ADD KEY `codestado` (`codestado`), ADD KEY `activo` (`activo`), ADD KEY `fk_oopbarradocu` (`codocu`), ADD KEY `fk_oopbarraestado` (`codestado`,`codocu`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_opcionesbarra`
--
ALTER TABLE `public_opcionesbarra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
