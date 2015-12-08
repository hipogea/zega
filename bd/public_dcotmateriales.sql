-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:08:23
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
-- Estructura de tabla para la tabla `public_dcotmateriales`
--

CREATE TABLE IF NOT EXISTS `public_dcotmateriales` (
  `id` bigint(20) NOT NULL,
  `codart` varchar(8) CHARACTER SET utf8 NOT NULL,
  `disp` varchar(2) CHARACTER SET utf8 NOT NULL,
  `cant` double NOT NULL,
  `punit` double NOT NULL,
  `item` varchar(3) CHARACTER SET utf8 NOT NULL,
  `descri` varchar(40) CHARACTER SET utf8 NOT NULL,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `stock` double DEFAULT NULL,
  `detalle` longtext CHARACTER SET utf8,
  `tipoitem` varchar(1) CHARACTER SET utf8 NOT NULL,
  `estadodetalle` varchar(2) CHARACTER SET utf8 NOT NULL,
  `coddocu` varchar(3) CHARACTER SET utf8 NOT NULL,
  `um` varchar(3) CHARACTER SET utf8 NOT NULL,
  `hidguia` bigint(20) DEFAULT NULL,
  `codservicio` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `tipo` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `idpadre` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_dcotmateriales`
--
ALTER TABLE `public_dcotmateriales`
  ADD PRIMARY KEY (`id`), ADD KEY `fki_detcot_materiales2` (`codart`), ADD KEY `fki_hija_coti` (`hidguia`), ADD KEY `fki_dospi_coti` (`disp`), ADD KEY `fki_dospi_coti2` (`disp`), ADD KEY `fki_hija_coti2` (`hidguia`), ADD KEY `fki_es_det_coti2` (`coddocu`,`estadodetalle`), ADD KEY `fki_detcot_materiales` (`codart`), ADD KEY `fki_es_det_coti` (`coddocu`,`estadodetalle`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
