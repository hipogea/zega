-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 12:47:10
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
-- Estructura de tabla para la tabla `public_alentregas`
--

CREATE TABLE IF NOT EXISTS `public_alentregas` (
  `id` bigint(20) NOT NULL,
  `iddetcompra` bigint(20) DEFAULT NULL,
  `cant` double DEFAULT NULL,
  `fecha` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idkardex` bigint(20) DEFAULT NULL,
  `usuario` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `final` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `estado` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `punit` double NOT NULL,
  `CODOCU` char(3) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_alentregas`
--
ALTER TABLE `public_alentregas`
  ADD PRIMARY KEY (`id`), ADD KEY `fki_detcvompas` (`iddetcompra`), ADD KEY `fki_oetret` (`idkardex`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_alentregas`
--
ALTER TABLE `public_alentregas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=168;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_alentregas`
--
ALTER TABLE `public_alentregas`
ADD CONSTRAINT `public_alentregas_ibfk_1` FOREIGN KEY (`idkardex`) REFERENCES `public_alkardex` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
