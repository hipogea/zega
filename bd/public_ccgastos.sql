-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 12:57:35
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
-- Estructura de tabla para la tabla `public_ccgastos`
--

CREATE TABLE IF NOT EXISTS `public_ccgastos` (
  `id` int(11) NOT NULL,
  `ceco` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `fechacontable` date DEFAULT NULL,
  `monto` double DEFAULT NULL,
  `codmoneda` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `usuario` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `idref` bigint(20) DEFAULT NULL,
  `tipo` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ano` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `mes` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `clasecolector` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `iduser` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=702 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_ccgastos`
--
ALTER TABLE `public_ccgastos`
  ADD PRIMARY KEY (`id`), ADD KEY `ceco` (`ceco`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_ccgastos`
--
ALTER TABLE `public_ccgastos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=702;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_ccgastos`
--
ALTER TABLE `public_ccgastos`
ADD CONSTRAINT `public_ccgastos_ibfk_1` FOREIGN KEY (`ceco`) REFERENCES `public_cc` (`codc`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
