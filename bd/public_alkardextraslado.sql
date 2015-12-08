-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 12:49:01
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
-- Estructura de tabla para la tabla `public_alkardextraslado`
--

CREATE TABLE IF NOT EXISTS `public_alkardextraslado` (
  `id` bigint(20) NOT NULL,
  `hidkardexemi` bigint(20) NOT NULL,
  `cant` double NOT NULL,
  `codestado` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `hidkardexdes` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_alkardextraslado`
--
ALTER TABLE `public_alkardextraslado`
  ADD PRIMARY KEY (`id`), ADD KEY `hidkardexemi` (`hidkardexemi`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_alkardextraslado`
--
ALTER TABLE `public_alkardextraslado`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_alkardextraslado`
--
ALTER TABLE `public_alkardextraslado`
ADD CONSTRAINT `public_alkardextraslado_ibfk_1` FOREIGN KEY (`hidkardexemi`) REFERENCES `public_alkardex` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
