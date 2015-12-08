-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:21:40
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
-- Estructura de tabla para la tabla `public_logactivos`
--

CREATE TABLE IF NOT EXISTS `public_logactivos` (
  `idactivo` bigint(20) DEFAULT NULL,
  `idempla` bigint(20) DEFAULT NULL,
  `codigoaf` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `descripcionaf` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `serie` varchar(18) CHARACTER SET utf8 DEFAULT NULL,
  `arreglo` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `codigo` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `texto` longtext CHARACTER SET utf8,
  `idlog` bigint(20) DEFAULT NULL,
  `fecha` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `codestado` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `idformato` bigint(20) DEFAULT NULL,
  `tipomodificacion` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `usuario` longtext CHARACTER SET utf8,
  `fechamod` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `barra` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `tipomaquina` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `dimensiones` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `marca` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modelo` varchar(22) CHARACTER SET utf8 DEFAULT NULL,
  `capacidad` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `observaciones` longtext CHARACTER SET utf8,
  `idinventario` bigint(20) DEFAULT NULL,
  `barpadre` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `sociedad` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `foto` longblob,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
