-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:25:49
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
-- Estructura de tabla para la tabla `public_igv`
--

CREATE TABLE IF NOT EXISTS `public_igv` (
  `valor` double NOT NULL,
  `id` int(11) NOT NULL,
  `tipo` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `Descripcion` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `finicio` date NOT NULL,
  `ffin` date NOT NULL,
  `activo` char(1) CHARACTER SET utf8 NOT NULL,
  `abreviatura` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `public_igv`
--

INSERT INTO `public_igv` (`valor`, `id`, `tipo`, `Descripcion`, `finicio`, `ffin`, `activo`, `abreviatura`) VALUES
(0.18, 1, '10', 'IMPUESTO GENERAL VENTAS', '2008-11-05', '2019-10-26', '1', 'IGV'),
(0.02, 2, '20', 'IMPUESTO MUNICIPAL', '2015-02-10', '2015-12-31', '1', 'IPM');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_igv`
--
ALTER TABLE `public_igv`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_igv`
--
ALTER TABLE `public_igv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
