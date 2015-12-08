-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:20:10
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
-- Estructura de tabla para la tabla `public_docu_ingresados`
--

CREATE TABLE IF NOT EXISTS `public_docu_ingresados` (
  `id` int(11) NOT NULL,
  `codprov` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `fecha` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechain` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `correlativo` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `tipodoc` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `moneda` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `descorta` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `codepv` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `monto` double DEFAULT NULL,
  `codgrupo` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `codresponsable` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `creadopor` varchar(23) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `texv` longtext CHARACTER SET utf8,
  `docref` varchar(14) CHARACTER SET utf8 DEFAULT NULL,
  `codteniente` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `codlocal` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `numero` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `cod_estado` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `codocu` varchar(3) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_docu_ingresados`
--
ALTER TABLE `public_docu_ingresados`
  ADD PRIMARY KEY (`id`), ADD KEY `fki_tra` (`codresponsable`), ADD KEY `fki_pro` (`codprov`), ADD KEY `fki_doc` (`tipodoc`), ADD KEY `fki_orwer` (`codepv`), ADD KEY `codocu` (`codocu`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
