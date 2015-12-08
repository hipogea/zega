-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:23:06
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
-- Estructura de tabla para la tabla `public_logimpresiones`
--

CREATE TABLE IF NOT EXISTS `public_logimpresiones` (
  `codocu` varchar(3) CHARACTER SET utf8 NOT NULL,
  `codestado` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `numdoc` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `numeorip` longtext CHARACTER SET utf8,
  `usuario` longtext CHARACTER SET utf8,
  `fechaimpresion` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idodcu` bigint(20) NOT NULL,
  `c_serie` varchar(3) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_logimpresiones`
--
ALTER TABLE `public_logimpresiones`
  ADD PRIMARY KEY (`codocu`,`idodcu`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
