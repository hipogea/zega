-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:47:28
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
-- Estructura de tabla para la tabla `public_solcot`
--

CREATE TABLE IF NOT EXISTS `public_solcot` (
  `codpro` varchar(8) NOT NULL,
  `idcontacto` int(11) NOT NULL,
  `numero` varchar(15) NOT NULL,
  `fecha` date NOT NULL,
  `vigencia` int(11) NOT NULL,
  `codmon` varchar(3) NOT NULL,
  `codocu` varchar(3) NOT NULL,
  `codestado` varchar(2) NOT NULL,
  `iduser` int(11) NOT NULL,
  `descripcion` varchar(40) NOT NULL,
  `indicaciones` text NOT NULL,
  `id` int(11) NOT NULL,
  `mail` char(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_solcot`
--
ALTER TABLE `public_solcot`
  ADD PRIMARY KEY (`id`), ADD KEY `idcontacto` (`idcontacto`), ADD KEY `codpro` (`codpro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_solcot`
--
ALTER TABLE `public_solcot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_solcot`
--
ALTER TABLE `public_solcot`
ADD CONSTRAINT `public_solcot_ibfk_1` FOREIGN KEY (`codpro`) REFERENCES `public_clipro` (`codpro`),
ADD CONSTRAINT `public_solcot_ibfk_2` FOREIGN KEY (`idcontacto`) REFERENCES `public_contactos` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
