-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:34:21
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
-- Estructura de tabla para la tabla `public_ocompra`
--

CREATE TABLE IF NOT EXISTS `public_ocompra` (
  `numcot` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `codpro` varchar(6) CHARACTER SET utf8 NOT NULL,
  `fecdoc` char(19) COLLATE utf8_unicode_ci NOT NULL,
  `codcon` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `codestado` varchar(2) CHARACTER SET utf8 NOT NULL,
  `texto` varchar(40) CHARACTER SET utf8 NOT NULL,
  `textolargo` longtext CHARACTER SET utf8,
  `tipologia` varchar(1) CHARACTER SET utf8 NOT NULL,
  `moneda` varchar(3) CHARACTER SET utf8 NOT NULL,
  `orcli` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `descuento` smallint(6) NOT NULL,
  `usuario` varchar(35) CHARACTER SET utf8 DEFAULT NULL,
  `coddocu` varchar(3) CHARACTER SET utf8 NOT NULL,
  `creado` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificado` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `codtipofac` varchar(2) CHARACTER SET utf8 NOT NULL,
  `codsociedad` varchar(1) CHARACTER SET utf8 NOT NULL,
  `codgrupoventas` varchar(3) CHARACTER SET utf8 NOT NULL,
  `codtipocotizacion` varchar(1) CHARACTER SET utf8 NOT NULL,
  `validez` int(11) NOT NULL,
  `codcentro` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `nigv` double NOT NULL,
  `codobjeto` varchar(3) CHARACTER SET utf8 NOT NULL,
  `fechapresentacion` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechanominal` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tenorsup` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `tenorinf` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `montototal` double NOT NULL,
  `idguia` int(11) NOT NULL,
  `idcontacto` int(11) DEFAULT NULL,
  `correlativ` bigint(20) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idreporte` int(11) DEFAULT NULL,
  `codresponsable` varchar(8) CHARACTER SET utf8 NOT NULL,
  `direcentrega` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_ocompra`
--
ALTER TABLE `public_ocompra`
  ADD PRIMARY KEY (`idguia`), ADD KEY `codresponsable` (`codresponsable`), ADD KEY `direcentrega` (`direcentrega`), ADD KEY `fk_ocompra_soc` (`codsociedad`), ADD KEY `codpro` (`codpro`), ADD KEY `codobjeto` (`codobjeto`), ADD KEY `numcot` (`numcot`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_ocompra`
--
ALTER TABLE `public_ocompra`
  MODIFY `idguia` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=131;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_ocompra`
--
ALTER TABLE `public_ocompra`
ADD CONSTRAINT `public_ocompra_ibfk_1` FOREIGN KEY (`codresponsable`) REFERENCES `public_trabajadores` (`codigotra`),
ADD CONSTRAINT `public_ocompra_ibfk_2` FOREIGN KEY (`direcentrega`) REFERENCES `public_direcciones` (`n_direc`),
ADD CONSTRAINT `public_ocompra_ibfk_3` FOREIGN KEY (`codsociedad`) REFERENCES `public_sociedades` (`socio`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
