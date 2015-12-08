-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:49:01
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
-- Estructura de tabla para la tabla `public_sunat01`
--

CREATE TABLE IF NOT EXISTS `public_sunat01` (
  `codigo` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `desdocu` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `public_sunat01`
--

INSERT INTO `public_sunat01` (`codigo`, `desdocu`) VALUES
('01', 'FACTURA'),
('03', 'BOLETA'),
('07', 'NOTA DE CREDITO'),
('08', 'NOTA DE DEBITO'),
('09', 'GUIA REMISION EMISOR'),
('12', 'TICKET MAQUIN REGISTRADORA'),
('13', 'DOCUMENTO EMITIDO POR BANCO O INSITUCIONES BAJO SUNAT'),
('18', 'DOCUMENTOS EMITIDOS PO AFPS'),
('31', 'GUIA REMISION TRANSPORTISTA');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_sunat01`
--
ALTER TABLE `public_sunat01`
  ADD PRIMARY KEY (`codigo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
