-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:33:52
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
-- Estructura de tabla para la tabla `public_obras`
--

CREATE TABLE IF NOT EXISTS `public_obras` (
  `descriobra` varchar(35) CHARACTER SET utf8 DEFAULT NULL,
  `codigoaf` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `fechasol` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codep` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `fechacierre` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `estado` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `om` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `obs` longtext CHARACTER SET utf8,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `centro` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `numero` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `prefijo` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `idobra` int(11) NOT NULL,
  `fechacreacion` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codigocompleto` varchar(16) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_obras`
--
ALTER TABLE `public_obras`
  ADD PRIMARY KEY (`idobra`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
