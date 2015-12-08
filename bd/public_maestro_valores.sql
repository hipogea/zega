-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:27:48
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
-- Estructura de tabla para la tabla `public_maestro_valores`
--

CREATE TABLE IF NOT EXISTS `public_maestro_valores` (
  `nombrevalor` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `hidat` bigint(20) DEFAULT NULL,
  `abreviatura` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `texto` longtext CHARACTER SET utf8,
  `respaldo1` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `respaldo2` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `respaldo3` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `id` int(11) NOT NULL,
  `resultado` varchar(10) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_maestro_valores`
--
ALTER TABLE `public_maestro_valores`
  ADD PRIMARY KEY (`id`), ADD KEY `fki_nndj` (`hidat`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
