-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:23:47
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
-- Estructura de tabla para la tabla `public_fondofijo`
--

CREATE TABLE IF NOT EXISTS `public_fondofijo` (
  `id` int(11) NOT NULL,
  `desfondo` varchar(60) CHARACTER SET utf8 NOT NULL,
  `codtra` varchar(4) CHARACTER SET utf8 NOT NULL,
  `codcen` varchar(4) CHARACTER SET utf8 NOT NULL,
  `iduser` int(11) NOT NULL,
  `fondo` decimal(10,2) DEFAULT NULL,
  `codmon` varchar(3) CHARACTER SET utf8 NOT NULL,
  `numerodias` int(11) NOT NULL,
  `gastomax` decimal(10,2) DEFAULT NULL,
  `rojo` decimal(10,2) DEFAULT NULL,
  `naranja` decimal(10,2) DEFAULT NULL,
  `azul` decimal(10,2) DEFAULT NULL,
  `codarea` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ejercicio` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `porctolerancia` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_fondofijo`
--
ALTER TABLE `public_fondofijo`
  ADD PRIMARY KEY (`id`), ADD KEY `codtra` (`codtra`), ADD KEY `codcen` (`codcen`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_fondofijo`
--
ALTER TABLE `public_fondofijo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_fondofijo`
--
ALTER TABLE `public_fondofijo`
ADD CONSTRAINT `public_fondofijo_ibfk_1` FOREIGN KEY (`codtra`) REFERENCES `public_trabajadores` (`codigotra`),
ADD CONSTRAINT `public_fondofijo_ibfk_2` FOREIGN KEY (`codcen`) REFERENCES `public_centros` (`codcen`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
