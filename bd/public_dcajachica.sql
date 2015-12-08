-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:08:05
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
-- Estructura de tabla para la tabla `public_dcajachica`
--

CREATE TABLE IF NOT EXISTS `public_dcajachica` (
  `id` bigint(20) NOT NULL,
  `hidcaja` int(11) NOT NULL,
  `hidcargo` int(11) DEFAULT NULL,
  `fecha` date NOT NULL,
  `glosa` varchar(60) NOT NULL,
  `referencia` varchar(60) NOT NULL,
  `debe` decimal(10,2) DEFAULT NULL,
  `haber` decimal(10,2) DEFAULT NULL,
  `monedahaber` char(3) NOT NULL,
  `saldo` decimal(10,2) DEFAULT NULL,
  `codtra` varchar(4) NOT NULL,
  `ceco` varchar(12) NOT NULL,
  `fechacre` datetime NOT NULL,
  `iduser` int(11) NOT NULL,
  `codocu` char(3) NOT NULL,
  `tipoflujo` varchar(3) NOT NULL,
  `codestado` char(2) NOT NULL,
  `coddocu` char(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `monto` decimal(9,4) NOT NULL,
  `tipimputacion` char(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_dcajachica`
--
ALTER TABLE `public_dcajachica`
  ADD PRIMARY KEY (`id`), ADD KEY `fk_caja` (`hidcaja`), ADD KEY `codtra` (`codtra`), ADD KEY `ceco` (`ceco`), ADD KEY `codocu` (`codocu`), ADD KEY `codestado` (`codestado`), ADD KEY `CODDOCU` (`coddocu`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_dcajachica`
--
ALTER TABLE `public_dcajachica`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_dcajachica`
--
ALTER TABLE `public_dcajachica`
ADD CONSTRAINT `public_dcajachica_ibfk_1` FOREIGN KEY (`hidcaja`) REFERENCES `public_cajachica` (`id`),
ADD CONSTRAINT `public_dcajachica_ibfk_2` FOREIGN KEY (`codtra`) REFERENCES `public_trabajadores` (`codigotra`),
ADD CONSTRAINT `public_dcajachica_ibfk_3` FOREIGN KEY (`ceco`) REFERENCES `public_cc` (`codc`),
ADD CONSTRAINT `public_dcajachica_ibfk_4` FOREIGN KEY (`codocu`) REFERENCES `public_documentos` (`coddocu`),
ADD CONSTRAINT `public_dcajachica_ibfk_5` FOREIGN KEY (`ceco`) REFERENCES `public_cc` (`codc`),
ADD CONSTRAINT `public_dcajachica_ibfk_6` FOREIGN KEY (`codtra`) REFERENCES `public_trabajadores` (`codigotra`),
ADD CONSTRAINT `public_dcajachica_ibfk_7` FOREIGN KEY (`codocu`) REFERENCES `public_documentos` (`coddocu`),
ADD CONSTRAINT `public_dcajachica_ibfk_8` FOREIGN KEY (`codtra`) REFERENCES `public_trabajadores` (`codigotra`),
ADD CONSTRAINT `public_dcajachica_ibfk_9` FOREIGN KEY (`ceco`) REFERENCES `public_cc` (`codc`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
