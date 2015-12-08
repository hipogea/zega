-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:48:35
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
-- Estructura de tabla para la tabla `public_solpe`
--

CREATE TABLE IF NOT EXISTS `public_solpe` (
  `numero` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `tipo` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `textocabecera` longtext CHARACTER SET utf8,
  `creado` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `autor` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `estado` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `fechadoc` datetime DEFAULT NULL,
  `fechanec` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `codocu` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `escompra` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `correlativ` bigint(20) DEFAULT NULL,
  `hidref` bigint(20) NOT NULL,
  `codocuref` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `iduser` int(11) NOT NULL,
  `externo` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=633 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_solpe`
--
ALTER TABLE `public_solpe`
  ADD PRIMARY KEY (`id`), ADD KEY `fki_kdfkd` (`estado`,`codocu`), ADD KEY `fki_solpe_docu` (`codocu`), ADD KEY `hidref` (`hidref`), ADD KEY `codocuref` (`codocuref`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_solpe`
--
ALTER TABLE `public_solpe`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=633;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
