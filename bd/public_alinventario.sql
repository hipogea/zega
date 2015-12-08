-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 12:47:55
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
-- Estructura de tabla para la tabla `public_alinventario`
--

CREATE TABLE IF NOT EXISTS `public_alinventario` (
  `codalm` varchar(3) CHARACTER SET utf8 NOT NULL,
  `creadopor` longtext CHARACTER SET utf8,
  `creadoel` longtext CHARACTER SET utf8,
  `modificadopor` longtext CHARACTER SET utf8,
  `modificadoel` longtext CHARACTER SET utf8,
  `fechainicio` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechafin` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `periodocontable` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `codresponsable` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `codart` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `codcen` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `cantlibre` double DEFAULT NULL,
  `canttran` double DEFAULT NULL,
  `cantres` double DEFAULT NULL,
  `ubicacion` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `lote` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `siid` bigint(20) DEFAULT NULL,
  `ssiduser` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `punit` double DEFAULT NULL,
  `punitdif` double NOT NULL DEFAULT '0',
  `codmon` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=405905 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_alinventario`
--
ALTER TABLE `public_alinventario`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `uk_registroinv` (`codart`,`codalm`,`codcen`), ADD KEY `bk_codart` (`codart`), ADD KEY `k_centros` (`codcen`), ADD KEY `k_almacend` (`codalm`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_alinventario`
--
ALTER TABLE `public_alinventario`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=405905;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_alinventario`
--
ALTER TABLE `public_alinventario`
ADD CONSTRAINT `public_alinventario_ibfk_1` FOREIGN KEY (`codart`) REFERENCES `public_maestrocomponentes` (`codigo`),
ADD CONSTRAINT `public_alinventario_ibfk_2` FOREIGN KEY (`codalm`) REFERENCES `public_almacenes` (`codalm`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
