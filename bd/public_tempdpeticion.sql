-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:52:25
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
-- Estructura de tabla para la tabla `public_tempdpeticion`
--

CREATE TABLE IF NOT EXISTS `public_tempdpeticion` (
  `id` bigint(20) NOT NULL,
  `idusertemp` int(11) NOT NULL,
  `hidpeticion` bigint(20) NOT NULL,
  `um` char(3) CHARACTER SET utf8 NOT NULL,
  `codart` varchar(10) CHARACTER SET utf8 NOT NULL,
  `punit` double NOT NULL,
  `plista` float NOT NULL,
  `igv_monto` float NOT NULL,
  `descuento` float NOT NULL,
  `pventa` float NOT NULL,
  `cant` double NOT NULL,
  `comentario` text CHARACTER SET utf8 NOT NULL,
  `codestado` char(2) CHARACTER SET utf8 NOT NULL,
  `codcen` varchar(4) CHARACTER SET utf8 NOT NULL,
  `codal` varchar(3) CHARACTER SET utf8 NOT NULL,
  `codocu` char(3) CHARACTER SET utf8 NOT NULL,
  `iduser` int(11) NOT NULL,
  `disponibilidad` char(2) CHARACTER SET utf8 NOT NULL,
  `idtemp` bigint(20) NOT NULL,
  `item` char(3) CHARACTER SET utf8 DEFAULT NULL,
  `descripcion` varchar(40) CHARACTER SET utf8 NOT NULL,
  `idstatus` int(1) NOT NULL,
  `tipo` char(1) CHARACTER SET utf8 DEFAULT NULL,
  `imputacion` varchar(12) CHARACTER SET utf8 NOT NULL,
  `idparent` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `codservicio` varchar(8) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=270 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_tempdpeticion`
--
ALTER TABLE `public_tempdpeticion`
  ADD PRIMARY KEY (`idtemp`) COMMENT 'p', ADD KEY `um` (`um`), ADD KEY `codestado` (`codestado`), ADD KEY `codocu` (`codocu`), ADD KEY `codart` (`codart`), ADD KEY `codcen` (`codcen`), ADD KEY `codal` (`codal`), ADD KEY `fk_dtemppeticion_inventario` (`codart`,`codal`,`codcen`), ADD KEY `imputacion` (`imputacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_tempdpeticion`
--
ALTER TABLE `public_tempdpeticion`
  MODIFY `idtemp` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=270;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_tempdpeticion`
--
ALTER TABLE `public_tempdpeticion`
ADD CONSTRAINT `public_tempdpeticion_ibfk_1` FOREIGN KEY (`um`) REFERENCES `public_ums` (`um`),
ADD CONSTRAINT `public_tempdpeticion_ibfk_2` FOREIGN KEY (`um`) REFERENCES `public_ums` (`um`),
ADD CONSTRAINT `public_tempdpeticion_ibfk_3` FOREIGN KEY (`codestado`) REFERENCES `public_estado` (`codestado`),
ADD CONSTRAINT `public_tempdpeticion_ibfk_4` FOREIGN KEY (`codocu`) REFERENCES `public_documentos` (`coddocu`),
ADD CONSTRAINT `public_tempdpeticion_ibfk_5` FOREIGN KEY (`codart`, `codal`, `codcen`) REFERENCES `public_alinventario` (`codart`, `codalm`, `codcen`),
ADD CONSTRAINT `public_tempdpeticion_ibfk_6` FOREIGN KEY (`imputacion`) REFERENCES `public_cc` (`codc`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
