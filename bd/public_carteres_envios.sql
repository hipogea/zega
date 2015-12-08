-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 12:56:26
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
-- Estructura de tabla para la tabla `public_carteres_envios`
--

CREATE TABLE IF NOT EXISTS `public_carteres_envios` (
  `idenvio` int(11) NOT NULL,
  `idcarter` int(11) DEFAULT NULL,
  `fechamuestra` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `fecharespuesta` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechaenvio` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_numgui` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `observacion` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `accion` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `horasmotor` int(11) DEFAULT NULL,
  `horasaceite` int(11) DEFAULT NULL,
  `txtobs` longtext CHARACTER SET utf8,
  `numenvio` int(11) DEFAULT NULL,
  `nshell` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_carteres_envios`
--
ALTER TABLE `public_carteres_envios`
  ADD PRIMARY KEY (`idenvio`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
