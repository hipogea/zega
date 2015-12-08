-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:17:19
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
-- Estructura de tabla para la tabla `public_impuestosdocu`
--

CREATE TABLE IF NOT EXISTS `public_impuestosdocu` (
  `id` int(11) NOT NULL,
  `codocu` varchar(3) CHARACTER SET utf8 NOT NULL,
  `codimpuesto` varchar(3) CHARACTER SET utf8 NOT NULL,
  `obligatorio` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_impuestosdocu`
--
ALTER TABLE `public_impuestosdocu`
  ADD PRIMARY KEY (`id`), ADD KEY `codocu` (`codocu`), ADD KEY `codimpuesto` (`codimpuesto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_impuestosdocu`
--
ALTER TABLE `public_impuestosdocu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_impuestosdocu`
--
ALTER TABLE `public_impuestosdocu`
ADD CONSTRAINT `public_impuestosdocu_ibfk_1` FOREIGN KEY (`codocu`) REFERENCES `public_documentos` (`coddocu`),
ADD CONSTRAINT `public_impuestosdocu_ibfk_2` FOREIGN KEY (`codimpuesto`) REFERENCES `public_impuestos` (`codimpuesto`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
