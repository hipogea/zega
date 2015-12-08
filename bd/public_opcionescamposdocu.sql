-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:35:59
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
-- Estructura de tabla para la tabla `public_opcionescamposdocu`
--

CREATE TABLE IF NOT EXISTS `public_opcionescamposdocu` (
  `id` int(11) NOT NULL,
  `codocu` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `campo` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `nombrecampo` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `tipodato` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `longitud` int(11) DEFAULT NULL,
  `nombredelmodelo` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `primercampolista` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `segundocampolista` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `seleccionable` longtext CHARACTER SET utf8
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_opcionescamposdocu`
--
ALTER TABLE `public_opcionescamposdocu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_opcionescamposdocu`
--
ALTER TABLE `public_opcionescamposdocu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
