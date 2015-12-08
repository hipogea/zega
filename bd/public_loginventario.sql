-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:23:20
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
-- Estructura de tabla para la tabla `public_loginventario`
--

CREATE TABLE IF NOT EXISTS `public_loginventario` (
  `idlog` bigint(20) NOT NULL,
  `hidinventario` bigint(20) NOT NULL,
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
  `codigopadre` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `numerodocumento` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `adicional` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `codestado` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `codepanterior` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `codlugarant` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `iddocu` bigint(20) DEFAULT NULL,
  `codcentro` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `portransporte` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `iddocumov` bigint(20) DEFAULT NULL,
  `codocumov` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `numerodocumentomov` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fechamov` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_loginventario`
--
ALTER TABLE `public_loginventario`
  ADD PRIMARY KEY (`idlog`), ADD KEY `fki_logcodepant` (`codepanterior`), ADD KEY `fki_logincode` (`hidinventario`), ADD KEY `fki_logincodod` (`coddocu`), ADD KEY `fki_log_codep` (`codep`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_loginventario`
--
ALTER TABLE `public_loginventario`
  MODIFY `idlog` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
