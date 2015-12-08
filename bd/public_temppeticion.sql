-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:53:12
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
-- Estructura de tabla para la tabla `public_temppeticion`
--

CREATE TABLE IF NOT EXISTS `public_temppeticion` (
  `idusertemp` int(11) NOT NULL,
  `codpro` varchar(6) CHARACTER SET utf8 NOT NULL,
  `numero` varchar(12) CHARACTER SET utf8 NOT NULL,
  `fecha` date NOT NULL,
  `usuario` varchar(25) CHARACTER SET utf8 NOT NULL,
  `fechacreac` datetime NOT NULL,
  `comentario` text CHARACTER SET utf8 NOT NULL,
  `textocorto` varchar(40) CHARACTER SET utf8 NOT NULL,
  `idcontacto` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `codocu` char(3) CHARACTER SET utf8 NOT NULL,
  `codestado` char(2) CHARACTER SET utf8 NOT NULL,
  `correlativo` int(11) NOT NULL,
  `prefijo` int(11) NOT NULL,
  `codmon` char(3) CHARACTER SET utf8 NOT NULL,
  `descuento` decimal(10,0) NOT NULL,
  `id` bigint(20) NOT NULL,
  `idtemp` bigint(20) NOT NULL,
  `item` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grupocompras` char(3) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_temppeticion`
--
ALTER TABLE `public_temppeticion`
  ADD PRIMARY KEY (`idtemp`) COMMENT 'p', ADD KEY `codpro` (`codpro`), ADD KEY `idcontacto` (`idcontacto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_temppeticion`
--
ALTER TABLE `public_temppeticion`
  MODIFY `idtemp` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_temppeticion`
--
ALTER TABLE `public_temppeticion`
ADD CONSTRAINT `public_temppeticion_ibfk_1` FOREIGN KEY (`codpro`) REFERENCES `public_clipro` (`codpro`),
ADD CONSTRAINT `public_temppeticion_ibfk_2` FOREIGN KEY (`idcontacto`) REFERENCES `public_contactos` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
