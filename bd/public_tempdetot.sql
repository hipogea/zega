-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:51:55
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
-- Estructura de tabla para la tabla `public_tempdetot`
--

CREATE TABLE IF NOT EXISTS `public_tempdetot` (
  `id` bigint(20) NOT NULL,
  `hidorden` bigint(20) NOT NULL,
  `item` varchar(3) NOT NULL,
  `textoactividad` varchar(40) NOT NULL,
  `codresponsable` varchar(8) NOT NULL,
  `fechainic` date NOT NULL,
  `fechafinprog` date NOT NULL,
  `fechacre` date NOT NULL,
  `flaginterno` varchar(1) NOT NULL,
  `codocu` varchar(3) NOT NULL,
  `codestado` varchar(2) NOT NULL,
  `codmaster` varchar(12) NOT NULL,
  `idinventario` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idusertemp` int(11) NOT NULL,
  `idtemp` bigint(20) NOT NULL,
  `idstatus` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_tempdetot`
--
ALTER TABLE `public_tempdetot`
  ADD PRIMARY KEY (`idtemp`), ADD KEY `hidorden` (`hidorden`), ADD KEY `item` (`item`), ADD KEY `codmaster` (`codmaster`), ADD KEY `idinventario` (`idinventario`), ADD KEY `codresponsable_2` (`codresponsable`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_tempdetot`
--
ALTER TABLE `public_tempdetot`
  MODIFY `idtemp` bigint(20) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
