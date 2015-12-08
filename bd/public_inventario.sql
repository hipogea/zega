-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:19:39
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
-- Estructura de tabla para la tabla `public_inventario`
--

CREATE TABLE IF NOT EXISTS `public_inventario` (
  `codigo` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `c_estado` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `codep` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `comentario` longtext CHARACTER SET utf8,
  `fecha` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coddocu` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `codlugar` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `codigosap` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `codigoaf` varchar(14) CHARACTER SET utf8 DEFAULT NULL,
  `descripcion` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `marca` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `modelo` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `serie` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `clasefoto` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `codigopadre` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `numerodocumento` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `adicional` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `codigoafant` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `posicion` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `codcentro` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `codcentrooriginal` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `codeporiginal` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `rocoto` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `codepanterior` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `codcentroanterior` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `clase` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `baja` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `n_direc` bigint(20) DEFAULT NULL,
  `ubicacion` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `tipo` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `codestado` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `tienecarter` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `codarea` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `iddocu` bigint(20) DEFAULT NULL,
  `codigodoc` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `portransporte` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `historial` int(11) DEFAULT NULL,
  `hidpadre` int(11) DEFAULT NULL,
  `codpropietario` varchar(4) CHARACTER SET utf8 NOT NULL,
  `idinventario` bigint(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1512 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_inventario`
--
ALTER TABLE `public_inventario`
  ADD PRIMARY KEY (`idinventario`), ADD KEY `fki_PK_CODLUGAR` (`codlugar`), ADD KEY `fki_estad` (`codestado`,`codigodoc`), ADD KEY `fki_dlssfslkflsf` (`codlugar`), ADD KEY `codpropietario` (`codpropietario`), ADD KEY `coddocu` (`coddocu`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_inventario`
--
ALTER TABLE `public_inventario`
  MODIFY `idinventario` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1512;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_inventario`
--
ALTER TABLE `public_inventario`
ADD CONSTRAINT `public_inventario_ibfk_1` FOREIGN KEY (`coddocu`) REFERENCES `public_documentos` (`coddocu`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
