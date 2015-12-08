-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:54:53
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
-- Estructura de tabla para la tabla `public_tipocambio`
--

CREATE TABLE IF NOT EXISTS `public_tipocambio` (
  `codmon1` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `codmon2` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `id` int(11) NOT NULL,
  `denominador` int(11) DEFAULT NULL,
  `numerador` int(11) DEFAULT NULL,
  `ultima` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creadopor` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `compra` double DEFAULT NULL,
  `venta` double DEFAULT NULL,
  `cambio` double DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_tipocambio`
--
ALTER TABLE `public_tipocambio`
  ADD PRIMARY KEY (`id`), ADD KEY `codmon1` (`codmon1`), ADD KEY `codmon2` (`codmon2`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_tipocambio`
--
ALTER TABLE `public_tipocambio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
