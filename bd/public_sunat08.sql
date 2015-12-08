-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:49:48
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
-- Estructura de tabla para la tabla `public_sunat08`
--

CREATE TABLE IF NOT EXISTS `public_sunat08` (
  `codtipo` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `tipoisc` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `public_sunat08`
--

INSERT INTO `public_sunat08` (`codtipo`, `tipoisc`) VALUES
('01', 'Sistema al valor (Apéndice IV, lit. A – T.U.O IGV e ISC)'),
('02', 'Aplicación del Monto Fijo (Apéndice IV, lit. B – T.U.O IGV e ISC)'),
('03', 'Sistema de Precios de Venta al Público (Apéndice IV, lit. C – T.U.O IGV e ISC)');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_sunat08`
--
ALTER TABLE `public_sunat08`
  ADD PRIMARY KEY (`codtipo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
