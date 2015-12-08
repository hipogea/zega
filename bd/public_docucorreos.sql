-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:18:06
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
-- Estructura de tabla para la tabla `public_docucorreos`
--

CREATE TABLE IF NOT EXISTS `public_docucorreos` (
  `usuario` longtext CHARACTER SET utf8 NOT NULL,
  `coddocu` varchar(3) CHARACTER SET utf8 NOT NULL,
  `codestado` varchar(2) CHARACTER SET utf8 NOT NULL,
  `listainterna` longtext CHARACTER SET utf8 NOT NULL,
  `listaexterna` longtext CHARACTER SET utf8 NOT NULL,
  `asunto` varchar(60) CHARACTER SET utf8 NOT NULL,
  `habilitado` int(11) DEFAULT NULL,
  `mensajecabeza` longtext CHARACTER SET utf8 NOT NULL,
  `mensajepie` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
