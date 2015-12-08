-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 20:39:40
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
-- Estructura de tabla para la tabla `public_partes`
--

CREATE TABLE IF NOT EXISTS `public_partes` (
  `numero` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `fecha` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `puerto` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `puertodes` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `horometro` int(11) DEFAULT NULL,
  `horometrodes` int(11) DEFAULT NULL,
  `numerodecalas` int(11) DEFAULT NULL,
  `codep` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `velocidad` int(11) DEFAULT NULL,
  `tempagua` int(11) DEFAULT NULL,
  `presionaceite` int(11) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `zarpo` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `causa` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `m_rpm` int(11) DEFAULT NULL,
  `m_velocidad` double DEFAULT NULL,
  `m_tempagua` int(11) DEFAULT NULL,
  `m_presionaceite` int(11) DEFAULT NULL,
  `m_tempaceite` int(11) DEFAULT NULL,
  `m_difpaceite` int(11) DEFAULT NULL,
  `m_presionpetroleo` int(11) DEFAULT NULL,
  `m_difpfpetroleo` int(11) DEFAULT NULL,
  `m_restfairebr` int(11) DEFAULT NULL,
  `m_restfaireer` int(11) DEFAULT NULL,
  `m_taireadm` int(11) DEFAULT NULL,
  `m_tgasesturbo` int(11) DEFAULT NULL,
  `m_tgases1y2` int(11) DEFAULT NULL,
  `m_tgases3y4` int(11) DEFAULT NULL,
  `m_tgases5y6` int(11) DEFAULT NULL,
  `m_tgases7y8` int(11) DEFAULT NULL,
  `m_tgases9y10` int(11) DEFAULT NULL,
  `m_tgases11y12` int(11) DEFAULT NULL,
  `m_tgases13y14` int(11) DEFAULT NULL,
  `m_tgases15y16` int(11) DEFAULT NULL,
  `caja_taceite` int(11) DEFAULT NULL,
  `caja_paceite` int(11) DEFAULT NULL,
  `panga_rpm` int(11) DEFAULT NULL,
  `panga_taguamot` int(11) DEFAULT NULL,
  `panga_paceitemotor` int(11) DEFAULT NULL,
  `panga_paceitecaja` int(11) DEFAULT NULL,
  `d2_zarpe` double DEFAULT NULL,
  `d2_arribo` double DEFAULT NULL,
  `d2_estimadohora` double DEFAULT NULL,
  `d2_observaciones` longtext CHARACTER SET utf8,
  `acylu_consumomotor` int(11) DEFAULT NULL,
  `acylu_consumocaja` int(11) DEFAULT NULL,
  `acylu_consumohid` int(11) DEFAULT NULL,
  `acylu_consumograsa` int(11) DEFAULT NULL,
  `acylu_observaciones` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `acylu_fechaultimocambiomotor` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `acylu_horometroultimocambio` int(11) DEFAULT NULL,
  `acylu_fechaultimocambiocaja` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `acylu_horometroultimocambiocaja` int(11) DEFAULT NULL,
  `observacionesfinales` longtext CHARACTER SET utf8,
  `fechazarpe` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechaarribo` char(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_partes`
--
ALTER TABLE `public_partes`
  ADD PRIMARY KEY (`id`), ADD KEY `fki_plantas` (`puerto`), ADD KEY `fki_hdhf` (`codep`), ADD KEY `fki_puedes` (`puertodes`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
