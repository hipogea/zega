-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:25:38
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
-- Estructura de tabla para la tabla `public_maestrodetalle`
--

CREATE TABLE IF NOT EXISTS `public_maestrodetalle` (
  `codart` varchar(8) CHARACTER SET utf8 NOT NULL,
  `codcentro` varchar(4) CHARACTER SET utf8 NOT NULL,
  `codal` varchar(3) CHARACTER SET utf8 NOT NULL,
  `codgrupoventas` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `canaldist` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `canteconomica` double DEFAULT NULL,
  `cantreposic` double DEFAULT NULL,
  `cantreorden` double DEFAULT NULL,
  `leadtime` int(11) DEFAULT NULL,
  `catval` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `punitv` double DEFAULT NULL,
  `punitstd` double DEFAULT NULL,
  `controlprecio` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `supervisionautomatica` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `sujetolote` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `lifofifo` varchar(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_maestrodetalle`
--
ALTER TABLE `public_maestrodetalle`
  ADD PRIMARY KEY (`codart`,`codcentro`,`codal`), ADD KEY `FKI_ROIOTRY` (`codart`), ADD KEY `FKI_CATVAL` (`catval`), ADD KEY `fki_ceejet` (`codcentro`), ADD KEY `fki_maesgtrodetae` (`codart`), ADD KEY `fki_alammde` (`codal`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_maestrodetalle`
--
ALTER TABLE `public_maestrodetalle`
ADD CONSTRAINT `public_maestrodetalle_ibfk_1` FOREIGN KEY (`codart`) REFERENCES `public_maestrocomponentes` (`codigo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
