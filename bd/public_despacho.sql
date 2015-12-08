-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:10:54
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
-- Estructura de tabla para la tabla `public_despacho`
--

CREATE TABLE IF NOT EXISTS `public_despacho` (
  `id` bigint(20) NOT NULL,
  `hidpunto` int(11) NOT NULL,
  `hidkardex` bigint(20) NOT NULL,
  `fechacreac` date NOT NULL,
  `fechaprog` date NOT NULL,
  `descripcion` varchar(60) CHARACTER SET utf8 NOT NULL,
  `responsable` varchar(4) CHARACTER SET utf8 NOT NULL,
  `iduser` int(11) NOT NULL,
  `vigente` char(1) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_despacho`
--
ALTER TABLE `public_despacho`
  ADD PRIMARY KEY (`id`), ADD KEY `hidpunto` (`hidpunto`), ADD KEY `hidkardex` (`hidkardex`), ADD KEY `responsable` (`responsable`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_despacho`
--
ALTER TABLE `public_despacho`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_despacho`
--
ALTER TABLE `public_despacho`
ADD CONSTRAINT `public_despacho_ibfk_1` FOREIGN KEY (`hidkardex`) REFERENCES `public_alkardex` (`id`),
ADD CONSTRAINT `public_despacho_ibfk_2` FOREIGN KEY (`hidpunto`) REFERENCES `public_puntodespacho` (`id`),
ADD CONSTRAINT `public_despacho_ibfk_3` FOREIGN KEY (`responsable`) REFERENCES `public_trabajadores` (`codigotra`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
