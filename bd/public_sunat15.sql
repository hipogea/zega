-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:50:11
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
-- Estructura de tabla para la tabla `public_sunat15`
--

CREATE TABLE IF NOT EXISTS `public_sunat15` (
  `codigo` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `public_sunat15`
--

INSERT INTO `public_sunat15` (`codigo`, `descripcion`) VALUES
('1002', 'Leyenda TRANSFERENCIA GRATUITA DE UN BIEN Y/O SERVICIO PREST'),
('2000', 'Leyenda COMPROBANTE DE PERCEPCIÓN'),
('2001', 'Leyenda BIENES TRANSFERIDOS EN LA AMAZONÍA REGIÓN SELVAPARA '),
('2002', 'Leyenda SERVICIOS PRESTADOS EN LA AMAZONÍA  REGIÓN SELVA PAR'),
('2003', 'Leyenda CONTRATOS DE CONSTRUCCIÓN EJECUTADOS  EN LA AMAZONÍA');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_sunat15`
--
ALTER TABLE `public_sunat15`
  ADD PRIMARY KEY (`codigo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
