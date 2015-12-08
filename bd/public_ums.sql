-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-12-2015 a las 21:00:43
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
-- Estructura de tabla para la tabla `public_ums`
--

CREATE TABLE IF NOT EXISTS `public_ums` (
  `um` varchar(3) CHARACTER SET utf8 NOT NULL,
  `desum` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `creadopor` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `creadoel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificadopor` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `modificadoel` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `public_ums`
--

INSERT INTO `public_ums` (`um`, `desum`, `creadopor`, `creadoel`, `modificadopor`, `modificadoel`, `id`) VALUES
('120', 'UND', NULL, NULL, NULL, NULL, 19),
('121', 'M', NULL, NULL, NULL, NULL, 20),
('122', 'CM', NULL, NULL, NULL, NULL, 21),
('123', 'KG', NULL, NULL, NULL, NULL, 22),
('132', 'TN', NULL, NULL, NULL, NULL, 23),
('124', 'M2', NULL, NULL, NULL, NULL, 24),
('125', 'M3', NULL, NULL, NULL, NULL, 25),
('126', 'JGO', NULL, NULL, NULL, NULL, 26),
('158', 'GL', NULL, NULL, NULL, NULL, 27),
('189', 'ROLL', NULL, NULL, NULL, NULL, 28),
('190', 'CAJ', NULL, NULL, NULL, NULL, 29),
('258', 'BRAZA', NULL, NULL, NULL, NULL, 30),
('PI3', 'PIE CUBICO', NULL, NULL, NULL, NULL, 31),
('CIL', 'CILINDRO', NULL, NULL, NULL, NULL, 32),
('LTR', 'LITRO', NULL, NULL, NULL, NULL, 33),
('MIL', 'MILLAR', NULL, NULL, NULL, NULL, 34),
('SAC', 'SACO ', NULL, NULL, NULL, NULL, 35);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `public_ums`
--
ALTER TABLE `public_ums`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `k_ums` (`um`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `public_ums`
--
ALTER TABLE `public_ums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
