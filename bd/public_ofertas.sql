-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:34:36
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
-- Estructura de tabla para la tabla `public_ofertas`
--

CREATE TABLE IF NOT EXISTS `public_ofertas` (
  `id` bigint(20) NOT NULL,
  `hidmaestroclipro` bigint(20) NOT NULL,
  `punit` double NOT NULL,
  `fechadoc` date NOT NULL,
  `iduser` int(11) NOT NULL,
  `comentario` text CHARACTER SET utf8 NOT NULL,
  `validez` int(11) NOT NULL,
  `cant` double NOT NULL,
  `dispo` varchar(4) CHARACTER SET utf8 NOT NULL,
  `fechaprog` date NOT NULL,
  `iddesolpe` bigint(20) NOT NULL,
  `tratado` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_ofertas`
--
ALTER TABLE `public_ofertas`
  ADD PRIMARY KEY (`id`), ADD KEY `hidmaestroclipro` (`hidmaestroclipro`), ADD KEY `dispo` (`dispo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_ofertas`
--
ALTER TABLE `public_ofertas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
