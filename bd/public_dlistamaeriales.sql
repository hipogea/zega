-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:14:46
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
-- Estructura de tabla para la tabla `public_dlistamaeriales`
--

CREATE TABLE IF NOT EXISTS `public_dlistamaeriales` (
  `id` bigint(20) NOT NULL,
  `hidlista` bigint(20) NOT NULL,
  `codigo` varchar(10) CHARACTER SET utf8 NOT NULL,
  `cant` double NOT NULL,
  `um` char(3) CHARACTER SET utf8 NOT NULL,
  `tipsolpe` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_dlistamaeriales`
--
ALTER TABLE `public_dlistamaeriales`
  ADD PRIMARY KEY (`id`), ADD KEY `hidlista` (`hidlista`), ADD KEY `codigo` (`codigo`), ADD KEY `bk_euri` (`um`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_dlistamaeriales`
--
ALTER TABLE `public_dlistamaeriales`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_dlistamaeriales`
--
ALTER TABLE `public_dlistamaeriales`
ADD CONSTRAINT `public_dlistamaeriales_ibfk_1` FOREIGN KEY (`codigo`) REFERENCES `public_maestrocomponentes` (`codigo`),
ADD CONSTRAINT `public_dlistamaeriales_ibfk_2` FOREIGN KEY (`hidlista`) REFERENCES `public_listamateriales` (`id`),
ADD CONSTRAINT `public_dlistamaeriales_ibfk_3` FOREIGN KEY (`um`) REFERENCES `public_ums` (`um`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
