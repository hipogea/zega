-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:20:49
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
-- Estructura de tabla para la tabla `public_dpeticion`
--

CREATE TABLE IF NOT EXISTS `public_dpeticion` (
  `id` bigint(20) NOT NULL,
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
  `item` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idusertemp` int(11) NOT NULL,
  `descripcion` varchar(40) CHARACTER SET utf8 NOT NULL,
  `idstatus` int(1) NOT NULL,
  `tipo` char(1) CHARACTER SET utf8 NOT NULL,
  `imputacion` varchar(12) CHARACTER SET utf8 NOT NULL,
  `idparent` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `codservicio` varchar(8) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_dpeticion`
--
ALTER TABLE `public_dpeticion`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `ux_file_custom` (`id`,`codocu`), ADD KEY `hidpeticion` (`hidpeticion`), ADD KEY `um` (`um`), ADD KEY `codart` (`codart`), ADD KEY `codestado` (`codestado`), ADD KEY `codcen` (`codcen`), ADD KEY `codocu` (`codocu`), ADD KEY `codal` (`codal`), ADD KEY `imputacion` (`imputacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_dpeticion`
--
ALTER TABLE `public_dpeticion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=239;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_dpeticion`
--
ALTER TABLE `public_dpeticion`
ADD CONSTRAINT `public_dpeticion_ibfk_11` FOREIGN KEY (`codestado`) REFERENCES `public_estado` (`codestado`),
ADD CONSTRAINT `public_dpeticion_ibfk_12` FOREIGN KEY (`codocu`) REFERENCES `public_documentos` (`coddocu`),
ADD CONSTRAINT `public_dpeticion_ibfk_13` FOREIGN KEY (`imputacion`) REFERENCES `public_cc` (`codc`),
ADD CONSTRAINT `public_dpeticion_ibfk_2` FOREIGN KEY (`um`) REFERENCES `public_ums` (`um`),
ADD CONSTRAINT `public_dpeticion_ibfk_4` FOREIGN KEY (`codart`) REFERENCES `public_maestrocomponentes` (`codigo`),
ADD CONSTRAINT `public_dpeticion_ibfk_5` FOREIGN KEY (`codcen`) REFERENCES `public_centros` (`codcen`),
ADD CONSTRAINT `public_dpeticion_ibfk_6` FOREIGN KEY (`codal`) REFERENCES `public_almacenes` (`codalm`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
