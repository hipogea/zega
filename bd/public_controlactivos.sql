-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:05:50
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
-- Estructura de tabla para la tabla `public_controlactivos`
--

CREATE TABLE IF NOT EXISTS `public_controlactivos` (
  `idactivo` bigint(20) DEFAULT NULL,
  `tipo` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `guiaremision` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `numerofactura` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `fecha` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idemplazamientoactual` bigint(20) DEFAULT NULL,
  `idemplazamientoanterior` bigint(20) DEFAULT NULL,
  `codobraencurso` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `ccanterior` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `ccactual` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `comentario` longtext CHARACTER SET utf8,
  `numformato` varchar(17) CHARACTER SET utf8 DEFAULT NULL,
  `codestado` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `almacen` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `valesalida` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `ocompra` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `coddocu` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `codepanterior` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `codep` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `codlugaranterior` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `codlugarnuevo` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `codcentro` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `solicitante` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `documento` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `numeroref` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `idformato` int(11) NOT NULL,
  `codtipoop` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `codpropietario` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `operando` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_controlactivos`
--
ALTER TABLE `public_controlactivos`
  ADD PRIMARY KEY (`idformato`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_controlactivos`
--
ALTER TABLE `public_controlactivos`
  MODIFY `idformato` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
