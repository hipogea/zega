-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:17:53
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
-- Estructura de tabla para la tabla `public_ingfactura`
--

CREATE TABLE IF NOT EXISTS `public_ingfactura` (
  `id` bigint(20) NOT NULL,
  `codpro` varchar(8) CHARACTER SET utf8 NOT NULL,
  `fecha` date NOT NULL,
  `fechadoc` date NOT NULL,
  `numerodoc` varchar(13) CHARACTER SET utf8 NOT NULL,
  `seriedoc` varchar(5) CHARACTER SET utf8 NOT NULL,
  `numrecepcion` varchar(10) CHARACTER SET utf8 NOT NULL,
  `descripcion` varchar(40) CHARACTER SET utf8 NOT NULL,
  `iduser` int(11) NOT NULL,
  `fechacrea` datetime DEFAULT NULL,
  `codcentro` varchar(4) CHARACTER SET utf8 NOT NULL,
  `numocompra` varchar(12) CHARACTER SET utf8 NOT NULL,
  `idgarita` bigint(20) NOT NULL,
  `codocu` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `codestado` varchar(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_ingfactura`
--
ALTER TABLE `public_ingfactura`
  ADD PRIMARY KEY (`id`), ADD KEY `codpro` (`codpro`), ADD KEY `numocompra` (`numocompra`), ADD KEY `idgarita` (`idgarita`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_ingfactura`
--
ALTER TABLE `public_ingfactura`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_ingfactura`
--
ALTER TABLE `public_ingfactura`
ADD CONSTRAINT `public_ingfactura_ibfk_1` FOREIGN KEY (`codpro`) REFERENCES `public_clipro` (`codpro`),
ADD CONSTRAINT `public_ingfactura_ibfk_2` FOREIGN KEY (`numocompra`) REFERENCES `public_ocompra` (`numcot`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
