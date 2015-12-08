-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:25:08
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
-- Estructura de tabla para la tabla `public_maestroclipro`
--

CREATE TABLE IF NOT EXISTS `public_maestroclipro` (
  `id` int(11) NOT NULL,
  `codart` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `codpro` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `codmon` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `centro` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `um` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `verfoto` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `activo` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_maestroclipro`
--
ALTER TABLE `public_maestroclipro`
  ADD PRIMARY KEY (`id`), ADD KEY `fki_centos_clipor_maestro` (`centro`), ADD KEY `fki_oereor` (`um`), ADD KEY `codart` (`codart`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_maestroclipro`
--
ALTER TABLE `public_maestroclipro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_maestroclipro`
--
ALTER TABLE `public_maestroclipro`
ADD CONSTRAINT `public_maestroclipro_ibfk_1` FOREIGN KEY (`codart`) REFERENCES `public_maestrocomponentes` (`codigo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
