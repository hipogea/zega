-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 12:47:30
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
-- Estructura de tabla para la tabla `public_alimentacion`
--

CREATE TABLE IF NOT EXISTS `public_alimentacion` (
  `id` bigint(20) NOT NULL,
  `codpro` varchar(8) CHARACTER SET utf8 NOT NULL,
  `fechacre` date NOT NULL,
  `fechadoc` date NOT NULL,
  `comentario` text CHARACTER SET utf8 NOT NULL,
  `numero` varchar(10) CHARACTER SET utf8 NOT NULL,
  `codcen` varchar(4) CHARACTER SET utf8 NOT NULL,
  `codresponsa` varchar(6) CHARACTER SET utf8 NOT NULL,
  `iduser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_alimentacion`
--
ALTER TABLE `public_alimentacion`
  ADD PRIMARY KEY (`id`), ADD KEY `codpro` (`codpro`), ADD KEY `numero` (`numero`), ADD KEY `codcen` (`codcen`), ADD KEY `codresponsa` (`codresponsa`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_alimentacion`
--
ALTER TABLE `public_alimentacion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
