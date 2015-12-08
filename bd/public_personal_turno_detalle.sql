-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:42:29
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
-- Estructura de tabla para la tabla `public_personal_turno_detalle`
--

CREATE TABLE IF NOT EXISTS `public_personal_turno_detalle` (
  `codturno` varchar(3) CHARACTER SET utf8 NOT NULL,
  `dia` varchar(2) CHARACTER SET utf8 NOT NULL,
  `hingreso` longtext CHARACTER SET utf8 NOT NULL,
  `hinrefri` longtext CHARACTER SET utf8 NOT NULL,
  `hsarefri` longtext CHARACTER SET utf8 NOT NULL,
  `hsalida` longtext CHARACTER SET utf8 NOT NULL,
  `tolerancia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_personal_turno_detalle`
--
ALTER TABLE `public_personal_turno_detalle`
  ADD PRIMARY KEY (`codturno`,`dia`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
