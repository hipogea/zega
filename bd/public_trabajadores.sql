-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:59:36
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
-- Estructura de tabla para la tabla `public_trabajadores`
--

CREATE TABLE IF NOT EXISTS `public_trabajadores` (
  `codigotra` varchar(6) CHARACTER SET utf8 NOT NULL,
  `ap` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `am` varchar(35) CHARACTER SET utf8 DEFAULT NULL,
  `nombres` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `dni` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `codpuesto` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `cumple` date DEFAULT NULL,
  `fecingreso` date DEFAULT NULL,
  `domicilio` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `tiposangre` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `telfijo` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `telmoviles` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `referencia` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `activo` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `iduser` int(11) DEFAULT NULL,
  `prefijo` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `correlativo` int(11) NOT NULL,
  `alimentacion` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_trabajadores`
--
ALTER TABLE `public_trabajadores`
  ADD PRIMARY KEY (`codigotra`), ADD KEY `FKI_OFICIOS` (`codpuesto`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
