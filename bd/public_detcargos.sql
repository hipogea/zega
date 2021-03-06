-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:11:28
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
-- Estructura de tabla para la tabla `public_detcargos`
--

CREATE TABLE IF NOT EXISTS `public_detcargos` (
  `hidcargo` bigint(20) NOT NULL,
  `coditem` varchar(3) CHARACTER SET utf8 NOT NULL,
  `codmaterial` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `m_detcargo` longtext CHARACTER SET utf8,
  `c_esdetcargo` varchar(2) CHARACTER SET utf8 NOT NULL,
  `iddetcargo` bigint(20) NOT NULL,
  `descrip` varchar(40) CHARACTER SET utf8 NOT NULL,
  `coddocudetallecargo` varchar(3) CHARACTER SET utf8 NOT NULL,
  `cantcargo` double NOT NULL,
  `esactivo` int(11) DEFAULT NULL,
  `esusado` int(11) DEFAULT NULL,
  `umedida` varchar(3) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_detcargos`
--
ALTER TABLE `public_detcargos`
  ADD PRIMARY KEY (`iddetcargo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
