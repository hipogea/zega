-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:16:59
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
-- Estructura de tabla para la tabla `public_docompratemp`
--

CREATE TABLE IF NOT EXISTS `public_docompratemp` (
  `idtemp` bigint(20) NOT NULL,
  `codart` varchar(8) CHARACTER SET utf8 NOT NULL,
  `disp` varchar(2) CHARACTER SET utf8 NOT NULL,
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
  `hidguia` int(11) DEFAULT NULL,
  `codservicio` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `tipoimputacion` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `ceco` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `orden` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `codentro` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `codigoalma` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `punitdes` double DEFAULT NULL,
  `iddesolpe` bigint(20) DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL,
  `idusertemp` int(11) DEFAULT NULL,
  `idstatus` int(11) DEFAULT NULL,
  `id` int(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=484 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_docompratemp`
--
ALTER TABLE `public_docompratemp`
  ADD PRIMARY KEY (`idtemp`), ADD KEY `codart` (`codart`), ADD KEY `estadodetalle` (`estadodetalle`), ADD KEY `coddocu` (`coddocu`), ADD KEY `um` (`um`), ADD KEY `hidguia` (`hidguia`), ADD KEY `codentro` (`codentro`), ADD KEY `codigoalma` (`codigoalma`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_docompratemp`
--
ALTER TABLE `public_docompratemp`
  MODIFY `idtemp` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=484;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_docompratemp`
--
ALTER TABLE `public_docompratemp`
ADD CONSTRAINT `public_docompratemp_ibfk_1` FOREIGN KEY (`hidguia`) REFERENCES `public_ocompra` (`idguia`),
ADD CONSTRAINT `public_docompratemp_ibfk_2` FOREIGN KEY (`um`) REFERENCES `public_ums` (`um`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
