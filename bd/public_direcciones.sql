-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 13:14:03
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
-- Estructura de tabla para la tabla `public_direcciones`
--

CREATE TABLE IF NOT EXISTS `public_direcciones` (
  `c_hcod` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `c_direc` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `l_vale` bit(1) DEFAULT NULL,
  `c_nomlug` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `n_valor` int(11) DEFAULT NULL,
  `c_distrito` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `c_prov` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `c_departam` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `n_direc` int(11) NOT NULL,
  `socio` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `codlugar` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `codplanta` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `ubigeo` varchar(6) CHARACTER SET utf8 NOT NULL,
  `coddepa` varchar(2) CHARACTER SET utf8 NOT NULL,
  `codprov` varchar(2) CHARACTER SET utf8 NOT NULL,
  `coddist` varchar(2) CHARACTER SET utf8 NOT NULL,
  `codpais` char(3) CHARACTER SET utf8 NOT NULL,
  `cospostal` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `esembarque` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=688 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_direcciones`
--
ALTER TABLE `public_direcciones`
  ADD PRIMARY KEY (`n_direc`), ADD KEY `FKI_CLIPRO_DIRECCIONES` (`c_hcod`), ADD KEY `coddepa` (`coddepa`), ADD KEY `codprov` (`codprov`), ADD KEY `coddist` (`coddist`), ADD KEY `c_hcod` (`c_hcod`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_direcciones`
--
ALTER TABLE `public_direcciones`
  MODIFY `n_direc` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=688;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
