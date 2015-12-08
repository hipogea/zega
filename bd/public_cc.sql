-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 12:57:13
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
-- Estructura de tabla para la tabla `public_cc`
--

CREATE TABLE IF NOT EXISTS `public_cc` (
  `codc` varchar(12) CHARACTER SET utf8 NOT NULL,
  `cc` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `centro` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `desceco` varchar(35) CHARACTER SET utf8 DEFAULT NULL,
  `vale` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `validodel` date DEFAULT NULL,
  `validoal` date DEFAULT NULL,
  `explicacion` longtext CHARACTER SET utf8,
  `clasecolector` char(1) CHARACTER SET utf8 NOT NULL,
  `semaforopresup` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `codgrupo` varchar(4) CHARACTER SET utf8 NOT NULL,
  `codclase` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `correlativo` varchar(6) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `public_cc`
--

INSERT INTO `public_cc` (`codc`, `cc`, `centro`, `creadopor`, `creadoel`, `modificadopor`, `modificadoel`, `desceco`, `vale`, `validodel`, `validoal`, `explicacion`, `clasecolector`, `semaforopresup`, `codgrupo`, `codclase`, `correlativo`) VALUES
('7070010001', NULL, '1504', 'admin', '2015-09-22 14:57:27', NULL, NULL, 'IMPORTACIONES REINTJES', NULL, '2015-06-01', '2018-07-29', '', 'B', '1', '7001', '70', '0001'),
('7070010002', NULL, '1302', 'admin', '2015-09-22 14:58:51', NULL, NULL, 'MANDOS DE MORSE', NULL, '2015-09-01', '2016-04-16', '', 'B', '1', '7001', '70', '0002'),
('7070010078', NULL, '1302', 'admin', '2015-10-07 14:41:24', NULL, NULL, 'IMPORTACIONES', NULL, '2015-07-07', '2017-04-21', '', '', '1', '7001', '70', '78'),
('9010020578', NULL, '1504', 'admin', '2015-08-19 13:12:00', NULL, NULL, 'GRUA Y ESTIBA', NULL, '2015-08-19', '2016-02-27', '', 'K', '1', '1002', '90', '578'),
('904025', NULL, '1302', 'admin', '2015-01-27 18:11:57', NULL, NULL, 'TRANSPORTE', NULL, '2015-02-01', '2015-05-31', 'Todos los costos involucrados con transporte, materiales y personal', 'K', '1', '1000', '', ''),
('904030', NULL, '1302', 'admin', '2015-01-27 18:22:59', NULL, NULL, 'GASTOS DE MANTENIMIENTO', NULL, '2015-02-02', '2015-08-31', '', 'K', '1', '1000', '', ''),
('904035', NULL, '1302', 'admin', '2015-01-27 18:23:38', NULL, NULL, 'OFICINA Y LOCAL', NULL, '2015-02-19', '2016-05-21', '', 'K', '1', '1000', '', ''),
('904040', NULL, '1302', 'admin', '2015-01-27 18:24:25', NULL, NULL, 'COSTO DE VENTAS', NULL, '2015-02-01', '2017-03-24', '', 'K', '1', '1000', '', ''),
('904060', NULL, '1302', 'admin', '2015-01-27 18:25:02', NULL, NULL, 'MOVILIDADES Y VIATICOS', NULL, '2015-02-01', '2015-03-28', '', 'K', '1', '1000', '', ''),
('ASAA', NULL, '1302', 'admin', '2015-01-27 18:05:18', NULL, NULL, 'TRANSPORTE', NULL, '0000-00-00', '0000-00-00', 'Todos los costos involucrados con transporte, materiales y personal', 'K', '1', '1000', '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_cc`
--
ALTER TABLE `public_cc`
  ADD PRIMARY KEY (`codc`), ADD KEY `codgrupo` (`codgrupo`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_cc`
--
ALTER TABLE `public_cc`
ADD CONSTRAINT `public_cc_ibfk_1` FOREIGN KEY (`codgrupo`) REFERENCES `public_grupocc` (`codgrupo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
