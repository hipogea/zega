-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:25:53
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
-- Estructura de tabla para la tabla `public_maestrodetallecentros`
--

CREATE TABLE IF NOT EXISTS `public_maestrodetallecentros` (
  `id` bigint(20) NOT NULL,
  `hcodart` varchar(10) CHARACTER SET utf8 NOT NULL,
  `iqf` char(1) CHARACTER SET utf8 NOT NULL,
  `catvalor` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `codcen` varchar(4) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=93460 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_maestrodetallecentros`
--
ALTER TABLE `public_maestrodetallecentros`
  ADD PRIMARY KEY (`id`), ADD KEY `hcodart` (`hcodart`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_maestrodetallecentros`
--
ALTER TABLE `public_maestrodetallecentros`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=93460;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
