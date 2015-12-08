-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:51:42
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
-- Estructura de tabla para la tabla `public_tempdetingfactura`
--

CREATE TABLE IF NOT EXISTS `public_tempdetingfactura` (
  `hidfactura` bigint(20) NOT NULL,
  `item` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `hidkardex` bigint(20) NOT NULL,
  `iduser` int(11) NOT NULL,
  `fechacrea` datetime NOT NULL,
  `idtemp` bigint(20) NOT NULL,
  `idusertemp` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `hidalentrega` bigint(20) DEFAULT NULL,
  `idstatus` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_tempdetingfactura`
--
ALTER TABLE `public_tempdetingfactura`
  ADD PRIMARY KEY (`idtemp`), ADD KEY `fk_ingfactfv` (`hidfactura`), ADD KEY `fk_ingfract56fwr4` (`hidkardex`), ADD KEY `id` (`id`), ADD KEY `hidalentregas` (`hidalentrega`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_tempdetingfactura`
--
ALTER TABLE `public_tempdetingfactura`
  MODIFY `idtemp` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=89;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_tempdetingfactura`
--
ALTER TABLE `public_tempdetingfactura`
ADD CONSTRAINT `public_detingfactutra_ibfk_1` FOREIGN KEY (`hidfactura`) REFERENCES `public_ingfactura` (`id`),
ADD CONSTRAINT `public_tempdetingfactura_ibfk_1` FOREIGN KEY (`hidalentrega`) REFERENCES `public_alentregas` (`id`),
ADD CONSTRAINT `public_tempdetingfactura_ibfk_2` FOREIGN KEY (`hidalentrega`) REFERENCES `public_alentregas` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
