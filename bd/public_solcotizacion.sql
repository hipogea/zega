-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:48:22
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
-- Estructura de tabla para la tabla `public_solcotizacion`
--

CREATE TABLE IF NOT EXISTS `public_solcotizacion` (
  `id` bigint(15) NOT NULL,
  `hidesolpe` bigint(20) NOT NULL,
  `codpro` varchar(8) CHARACTER SET utf8 NOT NULL,
  `preciounit` int(11) NOT NULL,
  `dispo` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `fechacrea` datetime NOT NULL,
  `codmon` varchar(3) CHARACTER SET utf8 NOT NULL,
  `um` varchar(3) CHARACTER SET utf8 NOT NULL,
  `comentario` text COLLATE utf8_unicode_ci NOT NULL,
  `frespuesta` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='guarda las solicitude sde las corizacions';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_solcotizacion`
--
ALTER TABLE `public_solcotizacion`
  ADD PRIMARY KEY (`id`), ADD KEY `codmon` (`codmon`), ADD KEY `um` (`um`), ADD KEY `hidesolpe` (`hidesolpe`), ADD KEY `codpro` (`codpro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_solcotizacion`
--
ALTER TABLE `public_solcotizacion`
  MODIFY `id` bigint(15) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_solcotizacion`
--
ALTER TABLE `public_solcotizacion`
ADD CONSTRAINT `public_solcotizacion_ibfk_1` FOREIGN KEY (`hidesolpe`) REFERENCES `public_desolpe1` (`id`),
ADD CONSTRAINT `public_solcotizacion_ibfk_2` FOREIGN KEY (`um`) REFERENCES `public_ums` (`um`),
ADD CONSTRAINT `public_solcotizacion_ibfk_3` FOREIGN KEY (`codpro`) REFERENCES `public_clipro` (`codpro`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
