-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 12:49:28
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
-- Estructura de tabla para la tabla `public_almacendocs`
--

CREATE TABLE IF NOT EXISTS `public_almacendocs` (
  `fechavale` date DEFAULT NULL,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modificadoel` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codmovimiento` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `numvale` char(12) CHARACTER SET utf8 DEFAULT NULL,
  `codtipovale` char(2) CHARACTER SET utf8 DEFAULT NULL,
  `codtrabajador` char(4) CHARACTER SET utf8 DEFAULT NULL,
  `codalmacen` char(3) CHARACTER SET utf8 DEFAULT NULL,
  `codcentro` char(4) CHARACTER SET utf8 DEFAULT NULL,
  `cestadovale` char(2) CHARACTER SET utf8 DEFAULT NULL,
  `codocu` char(3) CHARACTER SET utf8 DEFAULT NULL,
  `fechacont` date DEFAULT NULL,
  `fechacre` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `numdocref` char(15) CHARACTER SET utf8 DEFAULT NULL,
  `posic` char(3) CHARACTER SET utf8 DEFAULT NULL,
  `codocuref` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `id` bigint(20) NOT NULL,
  `correlativo` bigint(20) DEFAULT NULL,
  `textolargo` text COLLATE utf8_unicode_ci,
  `codaldestino` char(3) CHARACTER SET utf8 DEFAULT NULL,
  `codcendestino` char(4) CHARACTER SET utf8 DEFAULT NULL,
  `codsociedad` char(1) CHARACTER SET utf8 NOT NULL,
  `ceco` varchar(15) CHARACTER SET utf8 NOT NULL,
  `iduser` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1085 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_almacendocs`
--
ALTER TABLE `public_almacendocs`
  ADD PRIMARY KEY (`id`), ADD KEY `codmovimiento` (`codmovimiento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_almacendocs`
--
ALTER TABLE `public_almacendocs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1085;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_almacendocs`
--
ALTER TABLE `public_almacendocs`
ADD CONSTRAINT `public_almacendocs_ibfk_1` FOREIGN KEY (`codmovimiento`) REFERENCES `public_almacenmovimientos` (`codmov`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
