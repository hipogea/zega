-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:17:03
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
-- Estructura de tabla para la tabla `public_impuestosaplicados`
--

CREATE TABLE IF NOT EXISTS `public_impuestosaplicados` (
  `id` bigint(20) NOT NULL,
  `hidocu` bigint(20) NOT NULL,
  `codocu` char(3) NOT NULL,
  `codimpuesto` varchar(3) NOT NULL,
  `valor` decimal(10,4) NOT NULL,
  `hidocupadre` bigint(20) NOT NULL,
  `codmon` varchar(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_impuestosaplicados`
--
ALTER TABLE `public_impuestosaplicados`
  ADD PRIMARY KEY (`id`), ADD KEY `codocu` (`codocu`), ADD KEY `hidocu` (`hidocu`), ADD KEY `FK_SSF4` (`hidocu`,`codocu`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_impuestosaplicados`
--
ALTER TABLE `public_impuestosaplicados`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=281;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
