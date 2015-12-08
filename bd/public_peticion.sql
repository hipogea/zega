-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:42:59
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
-- Estructura de tabla para la tabla `public_peticion`
--

CREATE TABLE IF NOT EXISTS `public_peticion` (
  `id` bigint(20) NOT NULL,
  `codpro` varchar(6) CHARACTER SET utf8 NOT NULL,
  `tipo` char(1) CHARACTER SET utf8 NOT NULL,
  `codcen` varchar(4) CHARACTER SET utf8 NOT NULL,
  `codal` varchar(3) CHARACTER SET utf8 NOT NULL,
  `imputacion` varchar(12) CHARACTER SET utf8 NOT NULL,
  `numero` varchar(12) CHARACTER SET utf8 NOT NULL,
  `fecha` date NOT NULL,
  `usuario` varchar(25) CHARACTER SET utf8 NOT NULL,
  `fechacreac` datetime NOT NULL,
  `comentario` text CHARACTER SET utf8 NOT NULL,
  `textocorto` varchar(40) CHARACTER SET utf8 NOT NULL,
  `idcontacto` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `codocu` char(3) CHARACTER SET utf8 NOT NULL,
  `codestado` char(2) CHARACTER SET utf8 NOT NULL,
  `correlativo` int(11) NOT NULL,
  `prefijo` varchar(3) CHARACTER SET utf8 NOT NULL,
  `codmon` char(3) CHARACTER SET utf8 NOT NULL,
  `descuento` decimal(10,0) NOT NULL,
  `idtemp` bigint(20) NOT NULL,
  `item` char(3) CHARACTER SET utf8 DEFAULT NULL,
  `grupocompras` char(3) CHARACTER SET utf8 DEFAULT NULL,
  `tenorsup` char(1) CHARACTER SET utf8 NOT NULL,
  `tenorinf` char(1) CHARACTER SET utf8 NOT NULL,
  `validez` int(11) NOT NULL,
  `codobjeto` varchar(3) CHARACTER SET utf8 NOT NULL,
  `codproadqui` varchar(6) CHARACTER SET utf8 NOT NULL,
  `direntrega` int(11) DEFAULT NULL,
  `socio` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orcli` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `fpago` varchar(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_peticion`
--
ALTER TABLE `public_peticion`
  ADD PRIMARY KEY (`id`), ADD KEY `codpro` (`codpro`), ADD KEY `idcontacto` (`idcontacto`), ADD KEY `iduser` (`iduser`), ADD KEY `codocu` (`codocu`), ADD KEY `codestado` (`codestado`), ADD KEY `codmon` (`codmon`), ADD KEY `codproadqui` (`codproadqui`), ADD KEY `codcen` (`codcen`), ADD KEY `codal` (`codal`), ADD KEY `imputacion` (`imputacion`), ADD KEY `grupocompras` (`grupocompras`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_peticion`
--
ALTER TABLE `public_peticion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=178;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_peticion`
--
ALTER TABLE `public_peticion`
ADD CONSTRAINT `public_peticion_ibfk_1` FOREIGN KEY (`codpro`) REFERENCES `public_clipro` (`codpro`),
ADD CONSTRAINT `public_peticion_ibfk_2` FOREIGN KEY (`codpro`) REFERENCES `public_clipro` (`codpro`),
ADD CONSTRAINT `public_peticion_ibfk_3` FOREIGN KEY (`idcontacto`) REFERENCES `public_contactos` (`id`),
ADD CONSTRAINT `public_peticion_ibfk_4` FOREIGN KEY (`codestado`) REFERENCES `public_estado` (`codestado`),
ADD CONSTRAINT `public_peticion_ibfk_5` FOREIGN KEY (`codocu`) REFERENCES `public_documentos` (`coddocu`),
ADD CONSTRAINT `public_peticion_ibfk_6` FOREIGN KEY (`grupocompras`) REFERENCES `public_grupoventas` (`codgrupo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
