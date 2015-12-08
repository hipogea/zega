-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:25:23
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
-- Estructura de tabla para la tabla `public_maestrocomponentes`
--

CREATE TABLE IF NOT EXISTS `public_maestrocomponentes` (
  `codigo` varchar(10) CHARACTER SET utf8 NOT NULL,
  `marca` varchar(35) CHARACTER SET utf8 DEFAULT NULL,
  `modelo` varchar(35) CHARACTER SET utf8 DEFAULT NULL,
  `nparte` varchar(35) CHARACTER SET utf8 DEFAULT NULL,
  `codpadre` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `um` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `descripcion` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `detalle` longtext CHARACTER SET utf8,
  `clase` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `codmaterial` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `flag` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `codtipo` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `id` int(11) NOT NULL,
  `correlativo` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `correl` int(11) DEFAULT NULL,
  `seri` int(11) NOT NULL,
  `codocu` char(3) CHARACTER SET utf8 NOT NULL,
  `esrotativo` char(1) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `codean` varchar(14) CHARACTER SET utf8 NOT NULL,
  `iduser` int(11) NOT NULL,
  `codigoosce` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pesoneto` decimal(10,0) NOT NULL,
  `esservicio` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_maestrocomponentes`
--
ALTER TABLE `public_maestrocomponentes`
  ADD PRIMARY KEY (`codigo`), ADD KEY `FKI_UMS` (`um`), ADD KEY `codtipo` (`codtipo`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_maestrocomponentes`
--
ALTER TABLE `public_maestrocomponentes`
ADD CONSTRAINT `public_maestrocomponentes_ibfk_1` FOREIGN KEY (`um`) REFERENCES `public_ums` (`um`),
ADD CONSTRAINT `public_maestrocomponentes_ibfk_2` FOREIGN KEY (`um`) REFERENCES `public_ums` (`um`),
ADD CONSTRAINT `public_maestrocomponentes_ibfk_3` FOREIGN KEY (`codtipo`) REFERENCES `public_maestrotipos` (`codtipo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
