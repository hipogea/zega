-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:41:09
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
-- Estructura de tabla para la tabla `public_personal`
--

CREATE TABLE IF NOT EXISTS `public_personal` (
  `codpersona` varchar(4) CHARACTER SET utf8 NOT NULL,
  `nombres` varchar(25) CHARACTER SET utf8 NOT NULL,
  `ap` varchar(40) CHARACTER SET utf8 NOT NULL,
  `am` varchar(25) CHARACTER SET utf8 NOT NULL,
  `dni` varchar(8) CHARACTER SET utf8 NOT NULL,
  `d_fecna` char(19) COLLATE utf8_unicode_ci NOT NULL,
  `sexo` varchar(1) CHARACTER SET utf8 NOT NULL,
  `foto` longblob,
  `d_fecin` char(19) COLLATE utf8_unicode_ci NOT NULL,
  `activo` int(11) NOT NULL,
  `codpuesto` varchar(3) CHARACTER SET utf8 NOT NULL,
  `gruposang` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `alergico` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `telefonos` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `descri` longtext CHARACTER SET utf8,
  `ubnac` varchar(6) CHARACTER SET utf8 NOT NULL,
  `ubvi` varchar(6) CHARACTER SET utf8 NOT NULL,
  `domicilio` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_personal`
--
ALTER TABLE `public_personal`
  ADD PRIMARY KEY (`codpersona`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
