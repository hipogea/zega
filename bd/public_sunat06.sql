-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:49:22
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
-- Estructura de tabla para la tabla `public_sunat06`
--

CREATE TABLE IF NOT EXISTS `public_sunat06` (
  `codocu` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `desdocu` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `public_sunat06`
--

INSERT INTO `public_sunat06` (`codocu`, `desdocu`) VALUES
('1', 'DOC TRIBUT NO SIN RUC'),
('2', 'DNI '),
('4', 'CARNET EXTRANJERIA'),
('6', 'REG UNICO CONTRIBUYENTES'),
('7', 'PASAPORTE'),
('A', 'CEDULA DIPLOMATICA');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_sunat06`
--
ALTER TABLE `public_sunat06`
  ADD PRIMARY KEY (`codocu`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
