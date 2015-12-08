-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:33:07
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
-- Estructura de tabla para la tabla `public_objetos_cliente`
--

CREATE TABLE IF NOT EXISTS `public_objetos_cliente` (
  `codpro` varchar(6) CHARACTER SET utf8 NOT NULL,
  `codobjeto` varchar(3) CHARACTER SET utf8 NOT NULL,
  `nombreobjeto` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `descripcionobjeto` longtext CHARACTER SET utf8,
  `estado` int(11) DEFAULT NULL,
  `creadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `id` int(11) NOT NULL,
  `correlativo` int(11) NOT NULL,
  `tipoobjeto` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `cebe` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_objetos_cliente`
--
ALTER TABLE `public_objetos_cliente`
  ADD PRIMARY KEY (`id`), ADD KEY `i_codobjetocli` (`codpro`), ADD KEY `i_codobjetos` (`codobjeto`), ADD KEY `cebe` (`cebe`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_objetos_cliente`
--
ALTER TABLE `public_objetos_cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `public_objetos_cliente`
--
ALTER TABLE `public_objetos_cliente`
ADD CONSTRAINT `public_objetos_cliente_ibfk_2` FOREIGN KEY (`cebe`) REFERENCES `public_cc` (`codc`),
ADD CONSTRAINT `public_objetos_cliente_ibfk_1` FOREIGN KEY (`codpro`) REFERENCES `public_clipro` (`codpro`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
