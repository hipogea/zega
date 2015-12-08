-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:49:33
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
-- Estructura de tabla para la tabla `public_sunat07`
--

CREATE TABLE IF NOT EXISTS `public_sunat07` (
  `codtipo` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `afectacion` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `public_sunat07`
--

INSERT INTO `public_sunat07` (`codtipo`, `afectacion`) VALUES
('10', 'Gravado -  Operación Onerosa'),
('11', 'Gravado – Retiro por premio'),
('12', 'Gravado – Retiro por donación'),
('13', 'Gravado – Retiro '),
('14', 'Gravado – Retiro por publicidad'),
('15', 'Gravado – Bonificaciones'),
('16', 'Gravado – Retiro por entrega a trabajadores'),
('20', 'Exonerado - Operación Onerosa'),
('30', 'Inafecto - Operación Onerosa'),
('31', 'Inafecto – Retiro por Bonificación'),
('32', 'Inafecto – Retiro'),
('33', 'Inafecto – Retiro por Muestras Médicas'),
('34', 'Inafecto -  Retiro por Convenio Colectivo'),
('35', 'Inafecto – Retiro por premio'),
('36', 'Inafecto -  Retiro por publicidad'),
('40', 'Exportación');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_sunat07`
--
ALTER TABLE `public_sunat07`
  ADD PRIMARY KEY (`codtipo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
