-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:17:52
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
-- Estructura de tabla para la tabla `public_docompra_t`
--

CREATE TABLE IF NOT EXISTS `public_docompra_t` (
  `codart` varchar(8) CHARACTER SET utf8 NOT NULL,
  `disp` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `cant` double NOT NULL,
  `punit` double NOT NULL,
  `item` varchar(3) CHARACTER SET utf8 NOT NULL,
  `descri` varchar(40) CHARACTER SET utf8 NOT NULL,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `stock` double DEFAULT NULL,
  `detalle` longtext CHARACTER SET utf8,
  `tipoitem` varchar(1) CHARACTER SET utf8 NOT NULL,
  `estadodetalle` varchar(2) CHARACTER SET utf8 NOT NULL,
  `coddocu` varchar(3) CHARACTER SET utf8 NOT NULL,
  `um` varchar(3) CHARACTER SET utf8 NOT NULL,
  `hidguia` bigint(20) DEFAULT NULL,
  `codservicio` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `tipoimputacion` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `ceco` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `orden` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `codentro` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `codigoalma` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `id` int(20) NOT NULL,
  `efectuado` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `iddocompra` bigint(20) DEFAULT NULL,
  `idsesion` bigint(20) DEFAULT NULL,
  `punitdes` double DEFAULT NULL,
  `iddesolpe` bigint(20) DEFAULT NULL,
  `mensaje` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_docompra_t`
--
ALTER TABLE `public_docompra_t`
  ADD PRIMARY KEY (`id`), ADD KEY `fki_ordencompra` (`punitdes`), ADD KEY `fk_docomprat_docu` (`coddocu`), ADD KEY `codart` (`codart`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_docompra_t`
--
ALTER TABLE `public_docompra_t`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_docompra_t`
--
ALTER TABLE `public_docompra_t`
ADD CONSTRAINT `public_docompra_t_ibfk_1` FOREIGN KEY (`codart`) REFERENCES `public_maestrocomponentes` (`codigo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
