-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:53:54
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
-- Estructura de tabla para la tabla `public_tenores`
--

CREATE TABLE IF NOT EXISTS `public_tenores` (
  `coddocu` varchar(3) CHARACTER SET utf8 NOT NULL,
  `mensaje` longtext CHARACTER SET utf8,
  `posicion` varchar(1) CHARACTER SET utf8 NOT NULL,
  `creadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `activo` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `logo` text CHARACTER SET utf8,
  `id` int(11) NOT NULL,
  `sociedad` varchar(1) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_tenores`
--
ALTER TABLE `public_tenores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_tenores`
--
ALTER TABLE `public_tenores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
