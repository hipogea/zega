-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:12:20
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
-- Estructura de tabla para la tabla `public_detingfactura`
--

CREATE TABLE IF NOT EXISTS `public_detingfactura` (
  `hidfactura` bigint(20) NOT NULL,
  `item` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `hidkardex` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL,
  `iduser` int(11) NOT NULL,
  `fechacrea` datetime NOT NULL,
  `hidalentrega` bigint(20) NOT NULL,
  `idstatus` int(11) NOT NULL,
  `idtemp` bigint(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_detingfactura`
--
ALTER TABLE `public_detingfactura`
  ADD PRIMARY KEY (`id`), ADD KEY `fk_ingfactf` (`hidfactura`), ADD KEY `fk_ingfactfw` (`hidkardex`), ADD KEY `public_detingfactura_ibfk_2` (`hidalentrega`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_detingfactura`
--
ALTER TABLE `public_detingfactura`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_detingfactura`
--
ALTER TABLE `public_detingfactura`
ADD CONSTRAINT `public_detingfactura_ibfk_1` FOREIGN KEY (`hidfactura`) REFERENCES `public_ingfactura` (`id`),
ADD CONSTRAINT `public_detingfactura_ibfk_2` FOREIGN KEY (`hidalentrega`) REFERENCES `public_alentregas` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
