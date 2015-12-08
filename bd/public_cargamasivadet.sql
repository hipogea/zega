-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 12:55:04
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
-- Estructura de tabla para la tabla `public_cargamasivadet`
--

CREATE TABLE IF NOT EXISTS `public_cargamasivadet` (
  `id` int(11) NOT NULL,
  `hidcarga` int(11) NOT NULL,
  `nombrecampo` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `aliascampo` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `orden` tinyint(4) NOT NULL,
  `activa` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `requerida` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `longitud` int(11) NOT NULL,
  `tipo` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_cargamasivadet`
--
ALTER TABLE `public_cargamasivadet`
  ADD PRIMARY KEY (`id`), ADD KEY `hidcarga` (`hidcarga`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_cargamasivadet`
--
ALTER TABLE `public_cargamasivadet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_cargamasivadet`
--
ALTER TABLE `public_cargamasivadet`
ADD CONSTRAINT `public_cargamasivadet_ibfk_1` FOREIGN KEY (`hidcarga`) REFERENCES `public_cargamasiva` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
