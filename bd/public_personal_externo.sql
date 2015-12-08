-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:41:48
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
-- Estructura de tabla para la tabla `public_personal_externo`
--

CREATE TABLE IF NOT EXISTS `public_personal_externo` (
  `idpersona` int(11) NOT NULL,
  `codpro` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `apaterno` varchar(35) CHARACTER SET utf8 NOT NULL,
  `amaterno` varchar(35) CHARACTER SET utf8 NOT NULL,
  `nombres` varchar(25) CHARACTER SET utf8 NOT NULL,
  `dni` varchar(8) CHARACTER SET utf8 NOT NULL,
  `chapa` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `tiposangre` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `telefono` varchar(35) CHARACTER SET utf8 DEFAULT NULL,
  `familiarcercano` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `parentesco` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `oficio` varchar(3) CHARACTER SET utf8 NOT NULL,
  `creadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_personal_externo`
--
ALTER TABLE `public_personal_externo`
  ADD PRIMARY KEY (`idpersona`), ADD KEY `fki_oficios` (`oficio`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
