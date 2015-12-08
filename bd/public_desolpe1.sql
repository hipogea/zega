-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:09:45
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
-- Estructura de tabla para la tabla `public_desolpe1`
--

CREATE TABLE IF NOT EXISTS `public_desolpe1` (
  `id` bigint(20) NOT NULL,
  `numero` varchar(10) CHARACTER SET utf8 NOT NULL,
  `tipimputacion` char(1) CHARACTER SET utf8 NOT NULL,
  `centro` varchar(4) CHARACTER SET utf8 NOT NULL,
  `codal` varchar(3) CHARACTER SET utf8 NOT NULL,
  `codart` varchar(10) CHARACTER SET utf8 NOT NULL,
  `txtmaterial` varchar(40) CHARACTER SET utf8 NOT NULL,
  `grupocompras` char(3) CHARACTER SET utf8 NOT NULL,
  `usuario` varchar(35) CHARACTER SET utf8 DEFAULT NULL,
  `textodetalle` text CHARACTER SET utf8,
  `fechacrea` datetime DEFAULT NULL,
  `fechaent` date DEFAULT NULL,
  `fechalib` datetime DEFAULT NULL,
  `imputacion` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `hidsolpe` bigint(20) DEFAULT NULL,
  `codocu` char(3) CHARACTER SET utf8 DEFAULT NULL,
  `tipsolpe` char(1) CHARACTER SET utf8 DEFAULT NULL,
  `est` char(2) CHARACTER SET utf8 DEFAULT NULL,
  `cant` float DEFAULT NULL,
  `item` char(3) CHARACTER SET utf8 DEFAULT NULL,
  `cantaten` float DEFAULT NULL,
  `posicion` int(11) DEFAULT NULL,
  `modificado` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `estadolib` char(1) CHARACTER SET utf8 DEFAULT NULL,
  `solicitanet` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `creado` datetime NOT NULL,
  `um` char(3) CHARACTER SET utf8 DEFAULT NULL,
  `firme` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `idreserva` bigint(20) NOT NULL,
  `punitplan` double NOT NULL DEFAULT '0',
  `punitreal` double NOT NULL DEFAULT '0',
  `codservicio` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `iduser` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=921 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_desolpe1`
--
ALTER TABLE `public_desolpe1`
  ADD PRIMARY KEY (`id`), ADD KEY `codart` (`codart`), ADD KEY `k_codal` (`codal`), ADD KEY `k_centro` (`centro`), ADD KEY `bk_hidesolpe` (`hidsolpe`), ADD KEY `fk_Pdfdffd` (`um`), ADD KEY `bk_registroinv` (`codart`,`codal`,`centro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_desolpe1`
--
ALTER TABLE `public_desolpe1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=921;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_desolpe1`
--
ALTER TABLE `public_desolpe1`
ADD CONSTRAINT `public_desolpe1_ibfk_1` FOREIGN KEY (`codart`, `codal`, `centro`) REFERENCES `public_alinventario` (`codart`, `codalm`, `codcen`),
ADD CONSTRAINT `public_desolpe1_ibfk_2` FOREIGN KEY (`codart`) REFERENCES `public_maestrocomponentes` (`codigo`),
ADD CONSTRAINT `public_desolpe1_ibfk_3` FOREIGN KEY (`um`) REFERENCES `public_ums` (`um`),
ADD CONSTRAINT `public_desolpe1_ibfk_4` FOREIGN KEY (`um`) REFERENCES `public_ums` (`um`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
