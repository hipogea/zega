-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 12:54:47
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
-- Estructura de tabla para la tabla `public_cargamasiva`
--

CREATE TABLE IF NOT EXISTS `public_cargamasiva` (
  `id` int(11) NOT NULL,
  `modelo` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `iduser` int(11) NOT NULL,
  `fechacreac` date NOT NULL,
  `fechaejec` date NOT NULL,
  `insercion` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `escenario` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_cargamasiva`
--
ALTER TABLE `public_cargamasiva`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_cargamasiva`
--
ALTER TABLE `public_cargamasiva`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
