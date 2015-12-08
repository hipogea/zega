-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:44:08
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
-- Estructura de tabla para la tabla `public_presupuesto`
--

CREATE TABLE IF NOT EXISTS `public_presupuesto` (
  `codep` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `anno` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `codsistema` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `tipo` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `idpresupuesto` bigint(20) NOT NULL,
  `moneda` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `tipooperacion` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `enero` double DEFAULT NULL,
  `febrero` double DEFAULT NULL,
  `marzo` double DEFAULT NULL,
  `abril` double DEFAULT NULL,
  `mayo` double DEFAULT NULL,
  `junio` double DEFAULT NULL,
  `julio` double DEFAULT NULL,
  `agosto` double DEFAULT NULL,
  `setiembre` double DEFAULT NULL,
  `octubre` double DEFAULT NULL,
  `noviembre` double DEFAULT NULL,
  `diciembre` double DEFAULT NULL,
  `porcentajemo` double DEFAULT NULL,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_presupuesto`
--
ALTER TABLE `public_presupuesto`
  ADD PRIMARY KEY (`idpresupuesto`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
