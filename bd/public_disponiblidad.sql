-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:14:20
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
-- Estructura de tabla para la tabla `public_disponiblidad`
--

CREATE TABLE IF NOT EXISTS `public_disponiblidad` (
  `codisp` varchar(2) CHARACTER SET utf8 NOT NULL,
  `dedispo` varchar(40) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `public_disponiblidad`
--

INSERT INTO `public_disponiblidad` (`codisp`, `dedispo`) VALUES
('10', 'STOCK'),
('20', '24 HORAS'),
('30', '48 HORAS'),
('40', '72 HORAS'),
('50', 'SEMANA'),
('60', 'QUINCENA'),
('70', '30 DIAS'),
('80', '2 MESES'),
('90', '3 MESES');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_disponiblidad`
--
ALTER TABLE `public_disponiblidad`
  ADD PRIMARY KEY (`codisp`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
