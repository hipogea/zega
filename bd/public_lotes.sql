-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:23:55
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
-- Estructura de tabla para la tabla `public_lotes`
--

CREATE TABLE IF NOT EXISTS `public_lotes` (
  `id` bigint(20) NOT NULL,
  `numlote` varchar(18) CHARACTER SET utf8 NOT NULL,
  `fechafabri` date NOT NULL,
  `fechaingreso` datetime NOT NULL,
  `fechavenc` date NOT NULL,
  `usuario` varchar(35) CHARACTER SET utf8 NOT NULL,
  `cant` double NOT NULL,
  `hidinventario` bigint(20) NOT NULL,
  `loteprov` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'lote del proveedor',
  `comentario` text CHARACTER SET utf8 NOT NULL,
  `codestado` char(2) CHARACTER SET utf8 NOT NULL COMMENT '''10'' creado, ''20'' agotado, ',
  `cantsaldo` double NOT NULL,
  `descripcion` varchar(40) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_lotes`
--
ALTER TABLE `public_lotes`
  ADD PRIMARY KEY (`id`), ADD KEY `numlote` (`numlote`), ADD KEY `hidinventario` (`hidinventario`), ADD KEY `loteprov` (`loteprov`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_lotes`
--
ALTER TABLE `public_lotes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
