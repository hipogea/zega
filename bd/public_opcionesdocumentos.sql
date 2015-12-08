-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:36:16
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
-- Estructura de tabla para la tabla `public_opcionesdocumentos`
--

CREATE TABLE IF NOT EXISTS `public_opcionesdocumentos` (
  `id` int(11) NOT NULL,
  `usuario` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `codparam` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `valor` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `tipodato` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `seleccionador` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `codocu` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `idusuario` bigint(20) DEFAULT NULL,
  `nombrecampo` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `nombretabla` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `idopdoc` bigint(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_opcionesdocumentos`
--
ALTER TABLE `public_opcionesdocumentos`
  ADD PRIMARY KEY (`id`), ADD KEY `fki_roeruoe` (`codocu`), ADD KEY `fki_ereprerre2242` (`idopdoc`), ADD KEY `fki_fK_wi9weuwe` (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_opcionesdocumentos`
--
ALTER TABLE `public_opcionesdocumentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=98;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
