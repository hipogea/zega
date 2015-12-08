-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:35:05
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
-- Estructura de tabla para la tabla `public_opciones`
--

CREATE TABLE IF NOT EXISTS `public_opciones` (
  `codigo` varchar(5) CHARACTER SET utf8 NOT NULL,
  `codpadre` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `codform` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `transaccion` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `codmodulo` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `grupo` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `tecla` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `orden` smallint(6) DEFAULT NULL,
  `mensaje` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `codigo_a_ejecutar` longtext CHARACTER SET utf8,
  `activo` smallint(6) DEFAULT NULL,
  `flag` smallint(6) DEFAULT NULL,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_opciones`
--
ALTER TABLE `public_opciones`
  ADD PRIMARY KEY (`codigo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
