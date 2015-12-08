-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:09:25
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
-- Estructura de tabla para la tabla `public_departamentos`
--

CREATE TABLE IF NOT EXISTS `public_departamentos` (
  `id` int(11) NOT NULL,
  `coddepa` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `departamento` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `public_departamentos`
--

INSERT INTO `public_departamentos` (`id`, `coddepa`, `departamento`) VALUES
(1, '01', 'AMAZONAS'),
(2, '02', 'ANCASH'),
(3, '03', 'APURIMAC'),
(4, '04', 'AREQUIPA'),
(5, '05', 'AYACUCHO'),
(6, '06', 'CAJAMARCA'),
(7, '07', 'CALLAO'),
(8, '08', 'CUSCO'),
(9, '09', 'HUANCAVELICA'),
(10, '10', 'HUANUCO'),
(11, '11', 'ICA'),
(12, '12', 'JUNIN'),
(13, '13', 'LA LIBERTAD'),
(14, '14', 'LAMBAYEQUE'),
(15, '15', 'LIMA'),
(16, '16', 'LORETO'),
(17, '17', 'MADRE DE DIOS'),
(18, '18', 'MOQUEGUA'),
(19, '19', 'PASCO'),
(20, '20', 'PIURA'),
(21, '21', 'PUNO'),
(22, '22', 'SAN MARTIN'),
(23, '23', 'TACNA'),
(24, '24', 'TUMBES'),
(25, '25', 'UCAYALI');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_departamentos`
--
ALTER TABLE `public_departamentos`
  ADD PRIMARY KEY (`id`), ADD KEY `coddepa` (`coddepa`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_departamentos`
--
ALTER TABLE `public_departamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
