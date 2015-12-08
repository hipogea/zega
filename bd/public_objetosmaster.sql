-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:32:51
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
-- Estructura de tabla para la tabla `public_objetosmaster`
--

CREATE TABLE IF NOT EXISTS `public_objetosmaster` (
  `id` int(11) NOT NULL,
  `hcodobmaster` varchar(15) NOT NULL,
  `hidobjeto` int(11) NOT NULL,
  `activo` char(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Une los objetos clientes y el master de equipos ';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_objetosmaster`
--
ALTER TABLE `public_objetosmaster`
  ADD PRIMARY KEY (`id`), ADD KEY `hidobjeto` (`hcodobmaster`), ADD KEY `hidmaster` (`hidobjeto`), ADD KEY `codobjetomaster` (`hcodobmaster`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_objetosmaster`
--
ALTER TABLE `public_objetosmaster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
