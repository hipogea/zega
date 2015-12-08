-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 12:49:57
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
-- Estructura de tabla para la tabla `public_almacenes`
--

CREATE TABLE IF NOT EXISTS `public_almacenes` (
  `codalm` varchar(3) CHARACTER SET utf8 NOT NULL,
  `nomal` varchar(35) CHARACTER SET utf8 DEFAULT NULL,
  `desalm` longtext CHARACTER SET utf8,
  `tipo` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `codcen` varchar(4) CHARACTER SET utf8 NOT NULL,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `codsoc` varchar(1) CHARACTER SET utf8 NOT NULL,
  `tipovaloracion` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `estructura` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `id` int(11) NOT NULL,
  `hiddirec` int(11) NOT NULL,
  `gestionadespacho` char(1) CHARACTER SET utf8 NOT NULL,
  `verprecios` char(1) CHARACTER SET utf8 NOT NULL,
  `novalorado` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `tolstockres` decimal(4,2) DEFAULT NULL,
  `fecharefpronostico` date NOT NULL,
  `codmon` varchar(4) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_almacenes`
--
ALTER TABLE `public_almacenes`
  ADD PRIMARY KEY (`codalm`), ADD KEY `FKI_AL_234` (`codcen`), ADD KEY `FKI_AL_1234` (`codsoc`), ADD KEY `codmon` (`codmon`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
