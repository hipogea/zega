-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:12:46
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
-- Estructura de tabla para la tabla `public_dfacrecibida`
--

CREATE TABLE IF NOT EXISTS `public_dfacrecibida` (
  `id` bigint(20) NOT NULL,
  `hidfacrecibida` bigint(20) NOT NULL,
  `cant` double NOT NULL,
  `hientrega` bigint(20) NOT NULL,
  `txtdetalle` text COLLATE utf8_unicode_ci NOT NULL,
  `codestado` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `creado` datetime NOT NULL,
  `fechacont` date NOT NULL,
  `column_10` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_dfacrecibida`
--
ALTER TABLE `public_dfacrecibida`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `unique_id` (`id`), ADD UNIQUE KEY `bk_ds` (`hientrega`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_dfacrecibida`
--
ALTER TABLE `public_dfacrecibida`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_dfacrecibida`
--
ALTER TABLE `public_dfacrecibida`
ADD CONSTRAINT `public_dfacrecibida_ibfk_1` FOREIGN KEY (`hientrega`) REFERENCES `public_alentregas` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
