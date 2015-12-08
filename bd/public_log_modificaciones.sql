-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:21:19
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
-- Estructura de tabla para la tabla `public_log_modificaciones`
--

CREATE TABLE IF NOT EXISTS `public_log_modificaciones` (
  `idregistro` bigint(20) DEFAULT NULL,
  `nombrecampo` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `valorant` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `valoract` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `fecha` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quien` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `modificacion` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_log_modificaciones`
--
ALTER TABLE `public_log_modificaciones`
  ADD PRIMARY KEY (`id`), ADD KEY `ik_fecha` (`quien`), ADD KEY `ik_` (`quien`), ADD KEY `ik_quien` (`quien`), ADD KEY `IK_idlog` (`idregistro`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
