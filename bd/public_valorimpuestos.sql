-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 21:01:29
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
-- Estructura de tabla para la tabla `public_valorimpuestos`
--

CREATE TABLE IF NOT EXISTS `public_valorimpuestos` (
  `id` int(11) NOT NULL,
  `hcodimpuesto` char(3) NOT NULL,
  `valor` decimal(6,2) NOT NULL,
  `finicio` date NOT NULL,
  `ffinal` date NOT NULL,
  `activo` char(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_valorimpuestos`
--
ALTER TABLE `public_valorimpuestos`
  ADD PRIMARY KEY (`id`), ADD KEY `hcodimpuesto` (`hcodimpuesto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_valorimpuestos`
--
ALTER TABLE `public_valorimpuestos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_valorimpuestos`
--
ALTER TABLE `public_valorimpuestos`
ADD CONSTRAINT `public_valorimpuestos_ibfk_1` FOREIGN KEY (`hcodimpuesto`) REFERENCES `public_impuestos` (`codimpuesto`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
