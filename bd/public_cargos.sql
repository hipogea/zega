-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 12:55:33
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
-- Estructura de tabla para la tabla `public_cargos`
--

CREATE TABLE IF NOT EXISTS `public_cargos` (
  `codigocentro` varchar(4) CHARACTER SET utf8 NOT NULL,
  `descargo` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `m_cargo` longtext CHARACTER SET utf8,
  `codjefe` varchar(4) CHARACTER SET utf8 NOT NULL,
  `codentrega` varchar(4) CHARACTER SET utf8 NOT NULL,
  `codrecibe` varchar(4) CHARACTER SET utf8 NOT NULL,
  `fecdocumento` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecentrega` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codtipocargo` varchar(2) CHARACTER SET utf8 NOT NULL,
  `codigoestadocargo` varchar(2) CHARACTER SET utf8 NOT NULL,
  `cnumcargo` varchar(10) CHARACTER SET utf8 NOT NULL,
  `coddocucargo` varchar(3) CHARACTER SET utf8 NOT NULL,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `idcargo` bigint(20) DEFAULT NULL,
  `avisarvencimiento` int(11) DEFAULT NULL,
  `fechavencimiento` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `esalmacen` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_cargos`
--
ALTER TABLE `public_cargos`
  ADD PRIMARY KEY (`cnumcargo`), ADD KEY `fki_auto` (`codjefe`), ADD KEY `fki_fd` (`codentrega`), ADD KEY `fki_traba` (`codentrega`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
