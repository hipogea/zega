-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:15:00
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
-- Estructura de tabla para la tabla `public_docompra`
--

CREATE TABLE IF NOT EXISTS `public_docompra` (
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
  `tipoimputacion` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `ceco` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `orden` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `codentro` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `codigoalma` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `punitdes` double DEFAULT NULL,
  `iddesolpe` bigint(20) DEFAULT NULL,
  `iduser` int(11) NOT NULL,
  `idtemp` bigint(20) NOT NULL,
  `idusertemp` int(11) NOT NULL,
  `idstatus` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_docompra`
--
ALTER TABLE `public_docompra`
  ADD PRIMARY KEY (`id`), ADD KEY `fki_centrterot` (`codentro`), ADD KEY `fki_fK-ocapmra` (`hidguia`), ADD KEY `fki_maestrocompotrn e` (`codart`), ADD KEY `fki_fK-ocapmrat` (`hidguia`), ADD KEY `fki_docueme` (`estadodetalle`,`coddocu`), ADD KEY `fki_docuemet` (`estadodetalle`,`coddocu`), ADD KEY `fki_maestrocompotrn et` (`codart`), ADD KEY `fki_oeteoyjeyet` (`codigoalma`,`codentro`,`codart`), ADD KEY `fki_oeteoyjeye` (`codigoalma`,`codentro`,`codart`), ADD KEY `fki_almandetete` (`codigoalma`), ADD KEY `fki_almandetetet` (`codigoalma`), ADD KEY `fki_centrterott` (`codentro`), ADD KEY `fki_material` (`codart`), ADD KEY `fk_docompra_docu` (`coddocu`), ADD KEY `fki_cenytrterot` (`codentro`), ADD KEY `fki_fK-ocyapmra` (`hidguia`), ADD KEY `fki_maestrocyyompotrn e` (`codart`), ADD KEY `fki_fK-ocayypmrat` (`hidguia`), ADD KEY `fki_docyyyueme` (`estadodetalle`,`coddocu`), ADD KEY `fki_docueyymet` (`estadodetalle`,`coddocu`), ADD KEY `fki_maestrocoyympotrn et` (`codart`), ADD KEY `fki_oetyyeoyjeyet` (`codigoalma`,`codentro`,`codart`), ADD KEY `fki_oetyyeoyjeye` (`codigoalma`,`codentro`,`codart`), ADD KEY `fki_almanyydetete` (`codigoalma`), ADD KEY `fki_almayyndetetet` (`codigoalma`), ADD KEY `fki_centryyterott` (`codentro`), ADD KEY `fki_myyaterial` (`codart`), ADD KEY `fk_docompyyra_docu` (`coddocu`), ADD KEY `fk_56565entregas` (`um`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_docompra`
--
ALTER TABLE `public_docompra`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=195;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_docompra`
--
ALTER TABLE `public_docompra`
ADD CONSTRAINT `public_docompra_ibfk_1` FOREIGN KEY (`um`) REFERENCES `public_ums` (`um`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
