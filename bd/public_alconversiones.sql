-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 12:46:23
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
-- Estructura de tabla para la tabla `public_alconversiones`
--

CREATE TABLE IF NOT EXISTS `public_alconversiones` (
  `id` int(11) NOT NULL,
  `um1` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `um2` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `numerador` double DEFAULT NULL,
  `denominador` double DEFAULT NULL,
  `codart` varchar(8) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_alconversiones`
--
ALTER TABLE `public_alconversiones`
  ADD PRIMARY KEY (`id`), ADD KEY `fki_conamagerial` (`codart`), ADD KEY `fki_flflkf` (`um2`), ADD KEY `fki_ums` (`um1`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_alconversiones`
--
ALTER TABLE `public_alconversiones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_alconversiones`
--
ALTER TABLE `public_alconversiones`
ADD CONSTRAINT `public_alconversiones_ibfk_1` FOREIGN KEY (`um1`) REFERENCES `public_ums` (`um`),
ADD CONSTRAINT `public_alconversiones_ibfk_2` FOREIGN KEY (`um2`) REFERENCES `public_ums` (`um`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
