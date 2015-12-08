-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:24:09
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
-- Estructura de tabla para la tabla `public_lugares`
--

CREATE TABLE IF NOT EXISTS `public_lugares` (
  `codlugar` varchar(6) CHARACTER SET utf8 NOT NULL,
  `deslugar` varchar(50) CHARACTER SET utf8 NOT NULL,
  `provincia` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `claselugar` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `codpro` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `n_direc` int(11) NOT NULL,
  `codplanta` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_lugares`
--
ALTER TABLE `public_lugares`
  ADD PRIMARY KEY (`id`), ADD KEY `fki_direccio` (`n_direc`), ADD KEY `fki_fk-centros` (`codplanta`), ADD KEY `fki_wewojfw` (`codpro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_lugares`
--
ALTER TABLE `public_lugares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_lugares`
--
ALTER TABLE `public_lugares`
ADD CONSTRAINT `public_lugares_ibfk_1` FOREIGN KEY (`n_direc`) REFERENCES `public_direcciones` (`n_direc`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
