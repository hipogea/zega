-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:45:07
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
-- Estructura de tabla para la tabla `public_puntodespacho`
--

CREATE TABLE IF NOT EXISTS `public_puntodespacho` (
  `id` int(11) NOT NULL,
  `hcodcanal` varchar(3) CHARACTER SET utf8 NOT NULL,
  `nombrepunto` varchar(40) CHARACTER SET utf8 NOT NULL,
  `pesaje` char(1) CHARACTER SET utf8 NOT NULL,
  `codcen` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `maxhorasespera` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_puntodespacho`
--
ALTER TABLE `public_puntodespacho`
  ADD PRIMARY KEY (`id`), ADD KEY `codcen` (`codcen`), ADD KEY `hcodcanal` (`hcodcanal`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_puntodespacho`
--
ALTER TABLE `public_puntodespacho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_puntodespacho`
--
ALTER TABLE `public_puntodespacho`
ADD CONSTRAINT `public_puntodespacho_ibfk_1` FOREIGN KEY (`hcodcanal`) REFERENCES `public_canales` (`codcanal`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
