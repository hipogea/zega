-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 12:51:13
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
-- Estructura de tabla para la tabla `public_alreserva`
--

CREATE TABLE IF NOT EXISTS `public_alreserva` (
  `id` bigint(20) NOT NULL,
  `hidesolpe` bigint(20) DEFAULT NULL,
  `estadoreserva` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `fechares` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usuario` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `cant` double DEFAULT NULL,
  `codocu` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `numreserva` int(11) NOT NULL,
  `flag` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `rex` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `atendido` char(19) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=669 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_alreserva`
--
ALTER TABLE `public_alreserva`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `constr_ID` (`hidesolpe`,`codocu`), ADD KEY `fki_fk` (`codocu`), ADD KEY `fki_eitet` (`estadoreserva`,`codocu`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_alreserva`
--
ALTER TABLE `public_alreserva`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=669;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_alreserva`
--
ALTER TABLE `public_alreserva`
ADD CONSTRAINT `public_alreserva_ibfk_1` FOREIGN KEY (`hidesolpe`) REFERENCES `public_desolpe1` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
